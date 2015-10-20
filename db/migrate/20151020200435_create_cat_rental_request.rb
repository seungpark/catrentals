class CreateCatRentalRequest < ActiveRecord::Migration
  def change
    create_table :cat_rental_requests do |t|
      t.string  :status,     null: false, default: 'PENDING'
      t.integer :cat_id,     null: false
      t.date    :start_date, null: false
      t.date    :end_date,   null: false

      t.timestamps
    end
  end
end
