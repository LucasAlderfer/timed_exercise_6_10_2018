class AddressesController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    # require 'pry';binding.pry
    if @address.save
      flash[:success] = "You created address #{@address.description} for #{@student.name}"
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip_code, :student_id)
  end
end
