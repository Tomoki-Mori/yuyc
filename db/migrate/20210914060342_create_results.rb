class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.string :competition
      t.string :picture1
      t.datetime :event_date
      t.string :adress
      t.string :posia
      t.string :posib
      t.string :posic
      t.string :posid
      t.string :snipea
      t.string :snipeb
      t.string :snipec
      t.string :sniped
      t.text :body

      t.timestamps
    end
  end
end
