class ChargesController < ApplicationController
    Stripe.api_key = ENV['SECRET_KEY']

    def new
    end
    
    def create
        # Amount in cents
        @amount = 500
      
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken]
        )
      
        charge = Stripe::Charge.create(
          :customer    => customer.id,
          :amount      => @amount,
          :description => 'Jordan Retro 3s',
          :currency    => 'usd'
        )
      
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to root_path  
      end
end
