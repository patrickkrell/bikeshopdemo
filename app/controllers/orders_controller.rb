class	OrdersController < ApplicationController 
    before_action :authenticate_user!
	
  def index
		if current_user.admin?
      @orders = Order.includes(:product).all.order(id: :desc)
    else
      @orders = Order.where('user_id = ?',current_user.id).order(id: :desc)
    end
	end

	def show
		@order = Order.find(params[:id])
	end

	def new
	end

	def create
	end

	def destroy
	end
end