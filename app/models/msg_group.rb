class MsgGroup < ActiveRecord::Base
  self.table_name = "msg_group"
  set_primary_key "ROWID"
  set_inheritance_column nil

  has_many :group_member, :foreign_key => :group_id
  has_many :message, :foreign_key => :group_id, :dependent => :destroy
end
