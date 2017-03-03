class RequestsController < ApplicationController
  before_action :logged_in_admin, only: [:index, :delete]
  
  def new
    @request = Request.new
  end
  
  def create
    @request = Request.new request_params
    if @request.save
      flash[:notice] = "Request submitted successfully"
      redirect_to action: :index
    else
      flash[:notice] = "Request failed to submit"
    end
    redirect_to action: :index
  end
  
  def index
    @requests = Request.all
  end
  
  def show
    @request = Request.find_by(id: params[:id])
  end
  
  def edit
  end
  
  def destroy
    @request = Request.find_by(id: params[:id])
    @request.delete
    redirect_to action: :index
  end
  
  def accept
    # @req = Request.find_by(id: params[:id])
    req = Request.find_by(id: params[:id])
    if create_copier_from_request req
      flash[:notice] = "Successful creation!"
      req.delete
      redirect_to action: :index
    else
      flash[:notice] = "Unsuccessful..."
    end
  end
  
  private
    def request_params
      params.require(:request).permit(:name, :manufacturer, :papercut, :coinop, :card_reader, :user_name, :user_phone)
    end
  
end
