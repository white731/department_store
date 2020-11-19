class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
    @items = @department.items.all
  end

  def new
    @department = Department.new()
    render partial: 'form'
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to department_path(@department)
    else
      render :new
    end
  end

  def edit
    @department = Department.find(params[:id])
    render partial: "form"
  end

  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
      redirect_to department_path(@department)
    else
      render :edit
    end
  end

  def destory
    @department = Department.find(params[:id])
    @department.destroy
  end

  private

  def department_params
    params.require(:department).permit(:name, :description, :num_of_employees)
  end

end
