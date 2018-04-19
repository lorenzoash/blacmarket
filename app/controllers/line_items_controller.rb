class LineItemsController < ApplicationController

    def create
        @line_item = LineItem.find_by(order: current_user.cart, item_id: params[:line_item][:item_id])
        if @line_item
            @line_item.quantity += 1
            @line_item.save
            session[:order_id]
        else
            @line_item = LineItem.new(line_item_params)
            @line_item.quantity = 1
            @line_item.order = current_user.cart
            @line_item.save
        end
        redirect_to carts_path
    end
    
    def update 
        @order = current_user.cart
        @line_item = @order.line_items.find(params[:id])
        @line_item.update_attributes(line_item_params)
        @line_item = @order.line_items
        redirect_to carts_path
    end
    
    def destroy
        @order = current_user.cart
        @line_item = @order.line_items.find(params[:id])
        @line_item.destroy
        @line_item = @order.line_items 
        redirect_to carts_path
    end

    private 

    def line_item_params
        params.require(:line_item).permit(:item_id, :quantity)
    end
end
