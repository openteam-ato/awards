class CreateAwardCategories < ActiveRecord::Migration
  def change
    create_table :award_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
