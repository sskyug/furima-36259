class CreateCategoryIds < ActiveRecord::Migration[6.0]
  def change
    create_table :category do |t|

      t.timestamps
    end
  end
end
