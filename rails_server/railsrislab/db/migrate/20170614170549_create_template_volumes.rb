class CreateTemplateVolumes < ActiveRecord::Migration[5.1]
  def change
    create_table :template_volumes do |t|
      t.string :name
      t.string :iscsiname
      t.text :description
      #t.references :os_type, foreign_key: true
      t.belongs_to :os_type, foreign_key: true

      t.timestamps
    end
  end
end
