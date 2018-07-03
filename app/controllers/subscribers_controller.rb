class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      flash[:success] = "Woohoo!" #notice: "Saved Successfully!"
      redirect_to root_path
    else
      redirect_to root_path, flash[:error] = "Alerting you to the monkey on your car!" #notice: "Failed to save"
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email, :source)
  end
end
