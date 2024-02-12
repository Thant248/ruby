class OrdersController < ApplicationController
    before_action :set_order, only: [:update, :show, :destroy]
  
    def index 
      @orders = Order.all 
      render json: @orders, status: 200
    end
  
    def show 
      render json: @order 
    end
  
    def create 
      @order = Order.create(order_params)

      if @order.save 
        render json: @order, status: :created, location: @order
      else 
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  
    def update 
      if @order.update(order_params)
        render json: @order
      else 
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @order.destroy!
    end
  
    def search 
      @orders = Order.where("book_name LIKE ?", "%#{params[:book_name]}%")
      render json: @orders
    end
  
    private 
      
    def set_order 
      @order = Order.find(params[:id])
    end
  
    def order_params 
      params.require(:order).permit(:place, :date, :book_name)
    end
  end
  