class DoctorController < ApplicationController

  def index
    @doctor_appointments = current_user.appointments.all
  end
  
end
