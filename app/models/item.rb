class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category_id, :condition_id, :delivery_charge_id, :prefecture_id, :send_day_id

  belongs_to :user

  validates :items_name, :detail, :category_id, :condition_id, :delivery_charge_id, 
  :prefecture_id, :send_day_id, :price, presence: true

  validates :category_id, :condition_id, :delivery_charge_id, :prefecture_id, :send_day_id,
  numericality: { other_than: 1 , message: "can't be blank"}

  has_one_attached :image

end
