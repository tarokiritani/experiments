class CellsController < ApplicationController
before_filter :authenticate_user!

def index
  mice = current_user.mice
  @cells = []
  mice.each { |m|
    @cells.concat(m.cells)
  }
  @cells.delete([])
end

def create
  @mouse = Mouse.find(params[:cell][:mouse_id].to_i)
  params[:cell].tap{|hs| hs.delete(:mouse_id) }
  @cell = @mouse.cells.build(params[:cell])
  if @cell.save
    redirect_to @mouse
  else
    render @mouse
  end
end

def destroy
  @mouse = Cell.find(params[:id]).mouse
  Cell.find(params[:id]).destroy
  redirect_to @mouse
end

def show
  @cell = Cell.find(params[:id].to_i)
  @analysis = @cell.analyses.build
end
end
