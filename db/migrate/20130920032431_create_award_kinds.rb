class CreateAwardKinds < ActiveRecord::Migration
  def change
    create_table :award_kinds do |t|
      t.string :title
      t.references :award_category, index: true

      t.timestamps
    end
  end
end
