class MiceController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @mouse = current_user.mice.build
  end
  
  def index
    @mice = current_user.mice  
  end
  
  def show
    @mouse = current_user.mice.find(params[:id])
    @surgery = @mouse.surgeries.build
    @cell = @mouse.cells.build
  end
  
  def create
    @mouse = current_user.mice.build(params[:mouse])
    if @mouse.save
      redirect_to @mouse
    else
      render 'new'
    end
  end
  
  def edit
    @mouse = current_user.mice.find(params[:id])
  end
    
  def update
    @mouse = current_user.mice.find(params[:id])
    if @mouse.update_attributes(params[:mouse])
      flash[:success] = "mouse data updated"
      redirect_to @mouse
    else
      render 'edit'
    end
  end
  
  def destroy
    @mouse = current_user.mice.find(params[:id]).destroy
    redirect_to mice_path
  end
end
