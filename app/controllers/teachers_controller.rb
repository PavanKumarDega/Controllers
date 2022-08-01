class TeachersController < ApplicationController

def index
  @teachers = Teacher.all
end

def new
  @teacher =Teacher.new
end

def create
  @teacher =Teacher.new(teacher_params)
  if @teacher.save
    flash[:notice]="Teacher Details Uploaded Successfully"
    redirect_to teacher_path
  else
    render 'new'
  end
end



private

def teacher_path
  params.required(:teacher).permit(:name)
end
end
