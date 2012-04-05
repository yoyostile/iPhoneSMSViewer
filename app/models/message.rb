class Message < ActiveRecord::Base
  self.table_name = "message"
  set_primary_key "ROWID"

  paginates_per 50

  belongs_to :msg_group, :foreign_key => :group_id

  def get_attachment_string
    if self.madrid_attachmentInfo.nil?
      return nil
    else
      str = self.madrid_attachmentInfo.to_s
      index = str.index("\x01+$")
      str = str[index+3..str.length-3]
      return str
    end
  end

  def get_attachment
    unless get_attachment_string.nil?
      attachment = MadridAttachment.find_by_attachment_guid(get_attachment_string)
    end
  end

  def get_attachment_path
    get_attachment.filename["/var/mobile/Library/SMS/".length..get_attachment.filename.length]
  end
end
