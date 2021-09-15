class CreateOthers < ActiveRecord::Migration[6.1]
  def change
    create_table :others do |t|
      t.string :title
      t.string :picture2
      t.text :content

      t.timestamps
    end
  end
end
