class AnalysesController < ApplicationController
before_filter :authenticate_user!

def index
  mice = current_user.mice
  cells = []
  
  mice.each { |m|
    cells.concat(m.cells)
  }
  
  cells.delete([])
  @analyses = []
  
  cells.each { |c|
    @analyses.concat(c.analyses)
  }
  
end

def create
  @cell = Cell.find(params[:analysis][:cell_id].to_i)
  params[:analysis].tap{|hs| hs.delete(:cell_id) }
  @analysis = @cell.analyses.build(params[:analysis])
  if @analysis.save
    redirect_to @cell
  else
    render @cell.mouse
  end
end

def destroy
  @cell = Analysis.find(params[:id]).cell
  Analysis.find(params[:id]).destroy
  redirect_to @cell
end

def edit
    @analysis = Analysis.find(params[:id])
end

def update
    @analysis = Analysis.find(params[:id])
    if @analysis.update_attributes(params[:analysis])
      flash[:success] = "analysis data updated"
      redirect_to @analysis.cell
    else
      render 'edit'
    end
  end

end
