class PurchaseAddress
  include ActiveModel::Model
   attr_accessor :post_code, :prefecture_id, :municipalities, :address, :building_name, :telephone_number, :user_id, :item_id
   
   with_options presence: true do
    validates :post_code,format: {with: /\A\d{3}[-]\d{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :telephone_number, format: {with: /\A\d{10,11}\z/, message: "can't be blank"}
    validates :municipalities, :address, :user_id, :item_id
   end
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }

    def save
      purchase = Purchase.create(user_id: user_id, item_id: item_id)

      Address.create(post_code: post_code, prefecture_id: prefecture_id, municipalities: municipalities, address: address, building_name: building_name, telephone_number: telephone_number, purchase_id: purchase.id)
    end
end