class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.get_colors_dict request_path
    colors_dict = {}
    colors_dict["explore"] = request_path == "/home/explore" ? "#967BB6" : ""
    colors_dict["mine"] = request_path == "/entries" ? "#967BB6" : ""
    colors_dict["new"] = request_path == "/entries/new" ? "#967BB6" : ""
    colors_dict["edit"] = request_path == "/users/edit" ? "#967BB6" : ""
    colors_dict["in"] = request_path == "/users/sign_in" ? "#967BB6" : ""
    colors_dict["up"] = request_path == "/users/sign_up" ? "#967BB6" : ""
    return colors_dict
  end

  def self.get_welcome_dict
    welc_dict = {}
    welc_dict[0] = "Girl dreaming",
    welc_dict[1] = "Brain waves",
    welc_dict[2] = "Night sky",
    welc_dict[3] = "Person dreaming",
    welc_dict[4] = "Boy dreaming"
    return welc_dict
  end
end
