class StudentsController < ApplicationController

def index
  @students = Student.all
end

def create
  @students =Student.new(room_params)
end
end
