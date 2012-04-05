class MadridChat < ActiveRecord::Base
  self.table_name = "madrid_chat"
  set_primary_key "ROWID"

  has_many :message, :primary_key => :chat_identifier, :foreign_key => :madrid_handle

end
