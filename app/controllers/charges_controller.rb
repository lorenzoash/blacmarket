class ChargesController < ApplicationController
    Stripe.api_key = ENV['SECRET_KEY']

    def new
    end
    
    def create
        # Amount in cents
        # @amount = 50000
        order = current_user.cart
        order.paid = true
        order.save

        redirect_to '/charges'
  
        # customer = Stripe::Customer.create(
        #   :email => params[:stripeEmail],
        #   :source  => params[:stripeToken]
        # )
      
        # charge = Stripe::Charge.create(
        #   :customer    => customer.id,
        #   :amount      => @amount,
        #   :description => 'BlacMarket Purchase',
        #   :currency    => 'usd'
        # )
      
      # rescue Stripe::CardError => e
      #   flash[:error] = e.message
      #   redirect_to root_path  
      end
end
