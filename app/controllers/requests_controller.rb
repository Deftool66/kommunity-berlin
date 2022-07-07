class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :index]
  before_action :authenticate_user!

  def index
    @request = Request.all
  end

  def new
    @request = Request.new
    @offer = Offer.find(params[:offer_id])
  end

  def show
  end

  def create
    @request = Request.new(request_params)
    @offer = Offer.find(params[:offer_id])
    @request.offer = @offer
    @request.user = current_user
    if @request.save
      redirect_to request_path(@request)

    else
      render :new
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:first_name, :last_name, :content, :email)
  end
end
