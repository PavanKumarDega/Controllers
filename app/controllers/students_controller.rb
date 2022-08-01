class StudentsController < ApplicationController

def index
  @students = Student.all
end
def new
  @student = Student.new
end

def create
  @student =Student.new(student_params)
  if @student.save
    flash[:notice]="Student Details Uploaded Successfully"
    redirect_to students_path
  else
    render 'new'
  end
end


private
def student_params
  params.required(:student).permit(:name, :std, :rollno)
end
end
