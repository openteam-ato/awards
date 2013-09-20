class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :organization, index: true
      t.references :crew, index: true
      t.references :person, index: true
      t.references :paper, index: true
      t.references :award_kind, index: true
      t.references :reason, :index => true

      t.timestamps
    end
  end
end
