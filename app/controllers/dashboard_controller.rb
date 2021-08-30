class DashboardController < ApplicationController
before_action :set_student, only: %i[ student_certification student_diploma]
  def home
    @existe = true
    if params[:run].present?
      @student = Student.where("run = ?", params[:run])
      if @student.empty?
        @existe = false
      end
    end
  end

  def student_certification
    if !@student.empty? || !@stundet.nil?
     
      respond_to do |format|
        format.pdf do 
          render pdf: "Certificado",
            template: 'dashboard/pdf',
            page_size: 'A4',
            margin:  {   top: 10,
              bottom: 10,
              left: 20,
              right: 20}
        end
      end
    else
      respond_to do |format|
        format.pdf { redirect_to root_path, alert: "Error al cargar pdf verifique su run." }
      end
    end  
  end
  def student_diploma
    if !@student.empty? || !@stundet.nil?
     
      respond_to do |format|
        format.pdf do 
          render pdf: "Diploma",
            template: 'dashboard/diplo',
            page_size: 'A4',
            orientation:'Landscape' ,
            margin:  {   top: 10,
              bottom: 10,
              left: 20,
              right: 20}
        end
      end
    else
      respond_to do |format|
        format.pdf { redirect_to root_path, alert: "Error al cargar pdf verifique su run." }
      end
    end  
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.where("run = ?", params[:run])
  end
end
