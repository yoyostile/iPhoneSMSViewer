# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "_SqliteDatabaseProperties", :id => false, :force => true do |t|
    t.text "key"
    t.text "value"
  end

  add_index "_SqliteDatabaseProperties", ["key"], :name => "sqlite_autoindex__SqliteDatabaseProperties_1", :unique => true

  create_table "group_member", :primary_key => "ROWID", :force => true do |t|
    t.integer "group_id"
    t.text    "address"
    t.text    "country"
  end

  add_index "group_member", ["group_id"], :name => "group_id_index"

  create_table "madrid_attachment", :primary_key => "ROWID", :force => true do |t|
    t.text    "attachment_guid"
    t.integer "created_date"
    t.integer "start_date"
    t.text    "filename"
    t.text    "uti_type"
    t.text    "mime_type"
    t.integer "transfer_state"
    t.integer "is_incoming"
    t.integer "message_id"
  end

  add_index "madrid_attachment", ["attachment_guid"], :name => "madrid_attachment_guid_index"
  add_index "madrid_attachment", ["filename"], :name => "madrid_attachment_filename_index"
  add_index "madrid_attachment", ["message_id"], :name => "madrid_attachment_message_index"

  create_table "madrid_chat", :primary_key => "ROWID", :force => true do |t|
    t.integer "style"
    t.integer "state"
    t.text    "account_id"
    t.binary  "properties"
    t.text    "chat_identifier"
    t.text    "service_name"
    t.text    "guid"
    t.text    "room_name"
    t.text    "account_login"
    t.binary  "participants"
  end

  add_index "madrid_chat", ["account_id"], :name => "madrid_chat_account_id_index"
  add_index "madrid_chat", ["account_login"], :name => "madrid_chat_account_login_index"
  add_index "madrid_chat", ["chat_identifier"], :name => "madrid_chat_chat_identifier_index"
  add_index "madrid_chat", ["guid"], :name => "madrid_chat_guid_index"
  add_index "madrid_chat", ["room_name"], :name => "madrid_chat_room_name_index"
  add_index "madrid_chat", ["service_name"], :name => "madrid_chat_service_name_index"
  add_index "madrid_chat", ["state"], :name => "madrid_chat_state_index"
  add_index "madrid_chat", ["style"], :name => "madrid_chat_style_index"

  create_table "message", :primary_key => "ROWID", :force => true do |t|
    t.text    "address"
    t.integer "date"
    t.text    "text"
    t.integer "flags"
    t.integer "replace"
    t.text    "svc_center"
    t.integer "group_id"
    t.integer "association_id"
    t.integer "height"
    t.integer "UIFlags"
    t.integer "version"
    t.text    "subject"
    t.text    "country"
    t.binary  "headers"
    t.binary  "recipients"
    t.integer "read"
    t.integer "smsc_ref"
    t.integer "dr_date"
    t.binary  "madrid_attributedBody"
    t.text    "madrid_handle"
    t.integer "madrid_version"
    t.text    "madrid_guid"
    t.integer "madrid_type"
    t.text    "madrid_roomname"
    t.text    "madrid_service"
    t.text    "madrid_account"
    t.integer "madrid_flags"
    t.binary  "madrid_attachmentInfo"
    t.text    "madrid_url"
    t.integer "madrid_error"
    t.integer "is_madrid"
    t.integer "madrid_date_read"
    t.integer "madrid_date_delivered"
    t.text    "madrid_account_guid"
  end

  add_index "message", ["flags"], :name => "message_flags_index"
  add_index "message", ["group_id", "ROWID"], :name => "message_group_index"
  add_index "message", ["madrid_guid"], :name => "madrid_guid_index"
  add_index "message", ["madrid_handle", "madrid_service"], :name => "madrid_handle_service_index"
  add_index "message", ["madrid_roomname", "madrid_service"], :name => "madrid_roomname_service_index"

  create_table "msg_group", :primary_key => "ROWID", :force => true do |t|
    t.integer "type"
    t.integer "newest_message"
    t.integer "unread_count"
    t.integer "msghash"
  end

  create_table "msg_pieces", :primary_key => "ROWID", :force => true do |t|
    t.integer "message_id"
    t.binary  "data"
    t.integer "part_id"
    t.integer "preview_part"
    t.text    "content_type"
    t.integer "height"
    t.integer "version"
    t.integer "flags"
    t.text    "content_id"
    t.text    "content_loc"
    t.binary  "headers"
  end

  add_index "msg_pieces", ["message_id"], :name => "pieces_message_index"

end
