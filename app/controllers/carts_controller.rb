class CartsController < ApplicationController

    def show
        @line_items = current_user.cart.line_items
    end

end