class SurgeriesController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @mouse = Mouse.find(params[:surgery][:mouse_id].to_i)
    params[:surgery].tap{|hs| hs.delete(:mouse_id) }
    @surgery = @mouse.surgeries.build(params[:surgery])
    if @surgery.save
      redirect_to @mouse
    else
      render @mouse
    end
  end

  def destroy
    @mouse = Surgery.find(params[:id]).mouse
    Surgery.find(params[:id]).destroy
    redirect_to @mouse
  end
end
