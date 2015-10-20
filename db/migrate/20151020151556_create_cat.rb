class CreateCat < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.date    :birth_date,  null: false
      t.string  :color,       null: false
      t.string  :name,        null: false
      t.string  :sex,         null: false, limit: 1
      t.text    :description, null: false

      t.timestamps
    end

  end
end
