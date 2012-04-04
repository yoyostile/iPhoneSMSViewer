class GroupMember < ActiveRecord::Base
  set_table_name "group_member"
  set_primary_key "ROWID"

  belongs_to :msg_group, :foreign_key => :group_id
end
