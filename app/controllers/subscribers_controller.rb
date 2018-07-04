class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      #toastr["success"]("Thank you for your interesting", "Successfully Subscribe")
      flash[:success] = "  Woohoo! Successfully Subscribe!  " #notice: "Saved Successfully!"
      redirect_to root_path
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email, :source)
  end
end
