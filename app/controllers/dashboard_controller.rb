class DashboardController < ApplicationController
  def home
    @existe = true
   if params[:run].present?
    @student = Student.where("run = ?", params[:run])

    if @student.empty?
      @existe = false
    end
  end
end
end
