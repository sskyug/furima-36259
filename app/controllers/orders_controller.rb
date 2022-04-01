class OrdersController < ApplicationController
  
  def index
    @item = Item.find(params[:item_id])
    @address_purchase = AddressPurchase.new
  end

  def new
    @address_purchase = AddressPurchase.new
  end

  def create
    @address_purchase = AddressPurchase.new(address_purchase_params)
    if @address_purchase.valid?
      @address_purchase.save
      redirect_to root
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address_purchase).permit(:post_code, :prefecture_id, :municipalities, :address, :building_name, :telephone_number).marge(user_id: current_user.id, item_id: item.id)
  end
end
