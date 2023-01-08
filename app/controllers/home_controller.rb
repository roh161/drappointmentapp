class HomeController < ApplicationController
  
  def index
    @doctors = User.where(user_role: 'Doctor')
    @patients = User.where(user_role: 'patient')
    @users = User.all
  end
    
end
