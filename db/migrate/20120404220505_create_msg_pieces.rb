class CreateMsgPieces < ActiveRecord::Migration
  def change
    create_table :msg_pieces do |t|

      t.timestamps
    end
  end
end
