class CreateDeviceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :device_types do |t|
      t.string :Name

      t.timestamps
    end
  end
end
