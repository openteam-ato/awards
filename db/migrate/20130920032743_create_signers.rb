class CreateSigners < ActiveRecord::Migration
  def change
    create_table :signers do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.string :post

      t.timestamps
    end
  end
end
