class SchoolsController < ApplicationController
  def index
    @schools =School.all
  end

  def show
    @school=School.find(params[:id])
  end

  def edit
     @school=School.find(params[:id])
  end

def update
  @school=School.find(params[:id])
  if @school.update(school_params)
    flash[:notice]= "School Details Updated"
    redirect_to schools_path
  else
    render 'edit'
  end

end

  def new
     @school = School.new
  end


  def create
  @school = School.new(school_params)
  if @school.save
    flash[:notice]="School Details Updated"
    redirect_to schools_path
  else
    render 'new'
  end
  end

  private
  def school_params
    params.required(:school).permit(:name, :location)
  end
end
