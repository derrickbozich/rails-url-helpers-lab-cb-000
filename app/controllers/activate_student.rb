class ActivateStudentController < ApplicationController
  # before_action :set_student, only: :show



  def activate
    @student = set_student
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect student_path(@student)

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
