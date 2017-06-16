class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      #t.references :user, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
