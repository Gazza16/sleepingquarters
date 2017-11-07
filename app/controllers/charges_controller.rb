class ChargesController < ApplicationController
  #controller for stripe set up and payment processing
  def new
    @amount = Booking.find_by_id(params[:boat_id])
  end
  def create
    # Amount in cent
    @booking = current_user.bookings
    @amount = Boat.find_by(params[:boat_id])
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@amount.price * 100).to_i,
      :description => @amount.boat_name,
      :currency    => 'aud'
    )
    redirect_to pages_thankyou_path
    @user = current_user.email
    to_email = @user
    PurchaseMailer.send_transactional_email(to_email).deliver_now
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to @amount
  end
end
