class AppointmentController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @doctor = User.find_by(id: params[:id])
    @appointment.user = @doctor
    if @appointment.save
      flash[:notice] = 'appointment created successfully'
      redirect_to root_path
    else
      flash[:error] = 'An error has occurred while creating the appointment.'
      render 'new'
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:patient_name,:DOP)
  end  
end
