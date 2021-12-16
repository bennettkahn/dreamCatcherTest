class EntriesController < ApplicationController

  before_action :set_entry, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show, :search]

  #Adding "before" action to only allow users to edit/update/destroy their own entries...
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /entries or /entries.json
  def index
    @entries = Entry.all
  end

  def search
    @pag_entries = Entry.where(is_private: false).where("lower(title) LIKE ?", "%" + params[:q].downcase + "%").paginate(page: params[:page], per_page: 4)
  end

  # GET /entries/1 or /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    #@entry = Entry.new
    @entry = current_user.entries.build
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries or /entries.json
  def create
    #@entry = Entry.new(entry_params)

    #Updating create method to reflect the user-entry auth change...
    @entry = current_user.entries.build(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: "Dream was successfully created." }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity } 
      end
    end
  end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: "Dream was successfully updated." }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1 or /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: "Dream was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  #Adding method to determine whether some entry can be changed by the current user...
  def correct_user
    @entry = current_user.entries.find_by(id: params[:id])
    redirect_to entries_path, notice: "Not Authorized to edit this entry" if @entry.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_params
      params.require(:entry).permit(:title, :description, :user_id, :is_anon, :is_private)
    end
end
