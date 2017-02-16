class CopiersController < ApplicationController
  respond_to :json
  
  def new
  end
  
  def show
  end
  
  def index
    #@cops = Copier.where(manufacturer: "Xerox")
    if params[:search]
      @cops = Copier.search(params[:search]).order("created_at DESC")
    else
      @cops = Copier.all.order("created_at DESC")
    end
  end
  
  def edit
  end
  
  def delete
  end
  
end
