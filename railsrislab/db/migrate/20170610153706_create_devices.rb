class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :ip
      t.string :mac
      t.text :description
      t.decimal :type

      t.timestamps
    end
  end
end
