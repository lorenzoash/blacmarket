class HomeController < ApplicationController

    def index
        @items = Item.all 
        @line_item = current_order.line_items.new
    end
end
