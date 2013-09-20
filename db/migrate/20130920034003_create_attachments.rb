class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :paper, index: true
      t.string :type
      t.attachment :file

      t.timestamps
    end
  end
end
