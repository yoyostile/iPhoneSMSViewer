class CreateMadridChats < ActiveRecord::Migration
  def change
    create_table :madrid_chats do |t|

      t.timestamps
    end
  end
end
