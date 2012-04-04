class Message < ActiveRecord::Base
  set_table_name "message"
  set_primary_key "ROWID"

  belongs_to :msg_group, :foreign_key => :group_id
  belongs_to :madrid_chat
  / aus irgendeinem seltsamen grund funktioniert hier :get_attachment nicht. /
  has_one :madrid_attachment, :primary_key => :get_attachment, :foreign_key => :attachment_guid

  def get_attachment
    puts "bla"
    if self.madrid_attachmentInfo.nil?
      return nil
    else
      str = self.madrid_attachmentInfo.to_s
      index = str.index("\x01+$")
      str = str[index+3..str.length-3]
      return str
    end
  end
end
