class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :ip
      t.string :mac
      t.text :description
      #t.references :device_type, foreign_key: true
      t.belongs_to :device_type, foreign_key: true

      t.timestamps
    end
  end
end
