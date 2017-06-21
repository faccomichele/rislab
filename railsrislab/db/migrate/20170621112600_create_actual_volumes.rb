class CreateActualVolumes < ActiveRecord::Migration[5.1]
  def change
    create_table :actual_volumes do |t|
      t.belongs_to :template_volume, foreign_key: true
      t.string :iscsiname

      t.timestamps
    end
  end
end
