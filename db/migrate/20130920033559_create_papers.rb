class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.references :signer, index: true
      t.references :contractor, index: true
      t.references :award_category, index: true
      t.string :type
      t.string :title
      t.string :number
      t.date :date

      t.timestamps
    end
  end
end
