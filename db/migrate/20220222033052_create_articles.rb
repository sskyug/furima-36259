class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :prefecture do |t|

      t.timestamps
    end
  end
end
