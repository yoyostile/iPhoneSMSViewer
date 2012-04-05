class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :sidebar

  def sidebar
    @sms_groups = MsgGroup.all
    @imessage_groups = MadridChat.all
  end
end
