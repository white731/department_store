class DepartmentController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
    @items = @department.items.all
  end

  def edit
  end

  def new
  end
end
