class MadridChatController < ApplicationController
  def show
    @messages = MadridChat.find(params[:id]).message.order(:date).page params[:page]
  end
end
