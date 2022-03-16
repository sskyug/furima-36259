class Item < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition  
  belongs_to :delivery_charge
  belongs_to :prefecture
  belongs_to :send_day

  validates :image, :items_name, :detail, :category_id, :condition_id, :delivery_charge_id,
            :prefecture_id, :send_day_id, presence: true
  validates :price, presence: true, format: { with: /\A[0-9]+\z/, message: "Half-width number" }, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "Out of setting range" }

  validates :category_id, :condition_id, :delivery_charge_id, :prefecture_id, :send_day_id,
            numericality: { other_than: 1, message: "can't be blank" }

  has_one_attached :image
end
