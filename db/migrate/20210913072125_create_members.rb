class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :image
      t.string :name
      t.string :fuclty
      t.string :position
      t.string :hobby
      t.string :role
      t.string :prefecture
      t.text :profile

      t.timestamps
    end
  end
end
