class CreateFreebiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :name
      t.integer :dev_id
      t.integer :company_id
    end
  end
end
