class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]
  def create
    new_school_class = SchoolClass.create(school_class_params(:title, :room_number))
    # if new_school_class.valid?
      redirect_to school_class_path(new_school_class)
    # else
    #   redirect_to new_school_class_path
    # end
  end

  def show
  end

  def edit

  end

  def new
    @school_class = SchoolClass.new
  end

  def index
    @school_classes = SchoolClass.all 
  end

  def update
    @school_class.update(school_class_params(:title,:room_number))
    redirect_to school_class_path(@school_class)

  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end
