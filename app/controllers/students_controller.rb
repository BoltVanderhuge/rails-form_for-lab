class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
  end

  def edit

  end

  def new
    @student = Student.new
  end

  def index
    @students = Student.all 
  end

  def update
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
