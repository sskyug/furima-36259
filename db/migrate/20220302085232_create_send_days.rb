class CreateSendDays < ActiveRecord::Migration[6.0]
  def change
    create_table :send_days do |t|

      t.timestamps
    end
  end
end
