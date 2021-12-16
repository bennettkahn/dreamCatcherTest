# README

## Project Website: 
https://dream-catcher-1.herokuapp.com/

## Project Description:
DreamCatcher is a website that allows users to keep a record of their dreams each night. They may also choose to post their dreams, either anonymously or named, and interact with other users' dreams. The goal of this project is to create an environment that encourages discussion of what dreams mean as well as how they may contain patterns over time.

* Ruby version: 3.0.2
* Rails version: 6.1.4

* System dependencies:
  * Rake
  * Bundle
  * Yarn

* Relevant gems:
  * simple-calendar, v 2.4
    * Calendar page functionality
  * devise, v 4.8
    * User management
  * will-paginate && will-paginate-bootstrap-style
    * Pagination functionality

* Database creation
  * rails db:create 

* Database initialization
  * db:migrate db:seed

* Services (job queues, cache servers, search engines, etc.)
  * puma 5.0 as the app server
  * rails s to run app locally

* Deployment via Heroku

* Testing Mechanisms
  * Testing through local server
  * Use better-errors to receive meaningful information about runtime errors
  
