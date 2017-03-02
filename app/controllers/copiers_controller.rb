class CopiersController < ApplicationController
  respond_to :json
  before_action :logged_in_admin, only: [:new, :create, :delete]
  
  def new
    @copier = Copier.new
  end
  
  def create
    @copier = Copier.new copier_params
    if @copier.save
      flash[:notice] = "Copier successfully created!"
      redirect_to @copier
    else
      flash[:notice] = "Copier not successfully created"
      redirect_to root_url
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
    
    def logged_in_admin
      unless admin_logged_in?
        flash[:notice] = "Please log in as admin."
        redirect_to login_url
      end
    end
  
end
