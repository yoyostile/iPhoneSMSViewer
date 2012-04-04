class CreateMadridAttachments < ActiveRecord::Migration
  def change
    create_table :madrid_attachments do |t|

      t.timestamps
    end
  end
end
