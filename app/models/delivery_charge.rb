class DeliveryCharge < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_charge_id
end
