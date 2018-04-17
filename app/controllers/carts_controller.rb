class CartsController < ApplicationController

    def show
        @line_item = current_order.line_items
    end
end