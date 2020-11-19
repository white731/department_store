class ItemsController < ApplicationController
  def index
    @department = Department.find(params[:department_id])
    @items = @department.items
  end

  def show
    @department = Department.find(params[:department_id])
    @item = @department.items.find(params[:id])
  end

  def new
    @department = Department.find(params[:department_id])
    @item = @department.new()
    render partial: "form"

  end

  def create
    @department = Department.find(params[:department_id])
    @item = @department.new(item_params)

    if @item.save
      redirect_to department_items_path(@department_id)
    else
      render :new
    end

  end

  def edit
    @department = Department.find(params[:department_id])
    @item = @department.items.find(params[:id])
    render partial: "form"
  end

  def update
    @department = Department.find(params[:department_id])
    @item = @department.items.find(params[:id])

    if @item.update(item_params)
      redirect_to department_item_path(@department,@item)
    else
      render :edit
    end
    
  end

  def destroy
    @department = Department.find(params[:department_id])
    @item = @department.items.find(params[:id])

    @item.destroy
    redirect_to redirect_to department_items_path(@department_id)

  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :quantity)
  end

end

