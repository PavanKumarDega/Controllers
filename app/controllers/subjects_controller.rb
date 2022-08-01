class SubjectsController < ApplicationController

def index
  @subjects = Subject.all
end

def new
  @subject = Subject.new
end

def create
  @subject =Subject.new(subject_params)
  if @subject.save
    flash[:notice]="Subject Details Uploaded Successfully"
    redirect_to subject_path
  else
    render 'new'
  end
end


private

def subject_params
  params.required(:subject).permit(:sub_name, :std)
end
end
