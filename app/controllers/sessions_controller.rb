class SessionsController < ApplicationController

# when you hit the get route you should be given the option to login or register
#when you click one of these links it will get the form to login
# when you click register it directs to matts view form

# user can fill in email and password
# submit hits post create session, authenticates
# that redirects you to homepage

# if we have time, set the clearence levels on the controllers

  def index
    # this is how you get the options to staff/faculty login

  end

  def new
    # gets you the login form
  end

  def create
    # creates the session and it assigns the role
    # it will redirect you to home page
  end

end
