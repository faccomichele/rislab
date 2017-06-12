class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :ip
      t.string :mac
      t.text :description
      t.decimal :devtype

      t.timestamps
    end
  end
end
