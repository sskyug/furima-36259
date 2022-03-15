class Item < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :condition

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :delivery_charge

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :send_day

  validates :image, :items_name, :detail, :category_id, :condition_id, :delivery_charge_id,
            :prefecture_id, :send_day_id, :price, presence: true

  validates :category_id, :condition_id, :delivery_charge_id, :prefecture_id, :send_day_id,
            numericality: { other_than: 1, message: "can't be blank" }

  has_one_attached :image
end
