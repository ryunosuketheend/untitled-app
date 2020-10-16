class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string    :name
      t.text      :detail
      t.integer   :price,  null:false
      t.date      :date
      t.text      :image,  null:false
      t.timestamps
    end
  end
end
