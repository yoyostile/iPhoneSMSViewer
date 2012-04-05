class MsgGroupController < ApplicationController
  def show
    @messages = MsgGroup.find(params[:id]).message.order(:date).page params[:page]
  end

  def destroy
    MsgGroup.find(params[:id]).destroy
  end
end
