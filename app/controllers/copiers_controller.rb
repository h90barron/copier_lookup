class CopiersController < ApplicationController
  respond_to :json
  
  def new
    @copier = Copier.new
  end
  
  def create
    @copier = Copier.new copier_params
    if @copier.save
      redirect_to @copier
    else
      redirect_to index
    end
  end
  
  def show
    @copier = Copier.find_by(id:params[:id])
  end
  
  def index
    @q = Copier.search(params[:q])
    @copier = @q.result
    
    #@cops = Copier.where(manufacturer: "Xerox")
    # if params[:search]
    #   @cops = Copier.search(params[:search]).order("created_at DESC")
    # else
    #   @cops = Copier.all.order("created_at DESC")
    # end
  end
  
  def edit
  end
  
  def delete
  end
  
  private
  
    def copier_params
      params.require(:copier).permit(:name, :manufacturer, :papercut, :coinop, :card_reader)
    end
  
end
