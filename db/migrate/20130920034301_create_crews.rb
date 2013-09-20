class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :title
      t.references :organization, index: true

      t.timestamps
    end
  end
end
