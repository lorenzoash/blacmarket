class ItemsController < ApplicationController
    before_action :authorize
    
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create 
        @item = Item.new(params.require(:item).permit( :price, :content, :image, :title))

        if @item.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @item = Item.find(params[:id])
        @line_item = LineItem.new
    end

    def edit
        @item = Item.find(params[:id])
        
        
     
    end

    def update
        @item = Item.find(params[:id])
        if @item.update_attributes(item_params)
            flash[:success] = "Saved!"
            redirect_to root_path
        else
            render :edit
        end
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to items_path
    end

    def like
        @item = Item.find(params[:id])
        @item.likes +=1
        @item.save
        redirect_to item_path(@item)
    end

    private 
    def item_params
        params.require(:item).permit( :price, :content, :image, :title)
    end
    
end