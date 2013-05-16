class CellController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def create
    @mouse = Mouse.find(params[:cell][:mouse_id].to_i)
    params[:surgery].tap{|hs| hs.delete(:mouse_id) }
    @cell = @mouse.cells.build(params[:cell])
    if @cell.save
      redirect_to @mouse
    else
      render @mouse
    end
  end

  def delete
    @mouse = Cell.find(params[:id]).mouse
    Cell.find(params[:id]).destroy
    redirect_to @mouse
  end
end
