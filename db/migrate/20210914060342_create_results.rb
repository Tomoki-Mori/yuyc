class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.string :competition
      t.string :picture1
      t.text :body

      t.timestamps
    end
  end
end
