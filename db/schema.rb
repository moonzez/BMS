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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160228145936) do

  create_table "archives", force: :cascade do |t|
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "street",            limit: 255
    t.string   "city",              limit: 255
    t.integer  "zip",               limit: 4
    t.string   "country",           limit: 255
    t.string   "email",             limit: 255
    t.string   "relationship",      limit: 255
    t.text     "investigation",     limit: 65535
    t.string   "wanted_firstname",  limit: 255
    t.string   "wanted_lastname",   limit: 255
    t.string   "wanted_birth_name", limit: 255
    t.string   "wanted_birth_date", limit: 255
    t.string   "wanted_birthplace", limit: 255
    t.text     "wanted_additional", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "formular",          limit: 255
  end

  create_table "archivesearches", force: :cascade do |t|
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
    t.string   "street",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detours", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "street",            limit: 255
    t.string   "country",           limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.date     "date3"
    t.time     "from3"
    t.time     "to3"
    t.string   "language",          limit: 255
    t.integer  "participnumber",    limit: 4
    t.integer  "groupnumber",       limit: 4,                             default: 1
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "topic",             limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "film",              limit: 255
    t.text     "wish",              limit: 65535
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                           default: "offen"
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                           default: "nein"
    t.string   "bill_sent",         limit: 255,                           default: "nein"
    t.string   "denial_sent",       limit: 255,                           default: "nein"
    t.string   "formular",          limit: 255,                           default: "ger"
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                           default: "nein"
    t.string   "zus_voll",          limit: 255,                           default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                             default: 0
    t.date     "mahnungdate"
    t.string   "invoice",           limit: 255,                           default: "ja"
    t.string   "storno_send",       limit: 255,                           default: "nein"
    t.date     "storno_date"
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 8, scale: 2
    t.decimal  "paid_price",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "themetour",                                               default: false
    t.boolean  "result_sent",                                             default: true
    t.string   "theme_type",        limit: 255
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8, scale: 2
    t.boolean  "age_fulfilled",                                           default: false
  end

  create_table "guidedtours", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "street",            limit: 255
    t.string   "country",           limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.date     "date3"
    t.time     "from3"
    t.time     "to3"
    t.string   "language",          limit: 255
    t.integer  "participnumber",    limit: 4
    t.integer  "groupnumber",       limit: 4,                             default: 1
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "topic",             limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "film",              limit: 255
    t.text     "wish",              limit: 65535
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                           default: "offen"
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                           default: "nein"
    t.string   "bill_sent",         limit: 255,                           default: "nein"
    t.string   "denial_sent",       limit: 255,                           default: "nein"
    t.string   "formular",          limit: 255,                           default: "ger"
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                           default: "nein"
    t.string   "zus_voll",          limit: 255,                           default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                             default: 0
    t.date     "mahnungdate"
    t.string   "invoice",           limit: 255,                           default: "ja"
    t.string   "storno_send",       limit: 255,                           default: "nein"
    t.date     "storno_date"
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 8, scale: 2
    t.decimal  "paid_price",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "themetour",                                               default: false
    t.boolean  "result_sent",                                             default: true
    t.string   "theme_type",        limit: 255
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8, scale: 2
    t.boolean  "age_fulfilled",                                           default: false
  end

  create_table "hdseminars", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "country",           limit: 255
    t.string   "street",            limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.date     "date3"
    t.time     "from3"
    t.time     "to3"
    t.string   "language",          limit: 255
    t.integer  "participnumber",    limit: 4
    t.integer  "groupnumber",       limit: 4,                             default: 1
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "topic",             limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "food",              limit: 255
    t.integer  "foodnumber",        limit: 4
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                           default: "offen"
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                           default: "nein"
    t.string   "bill_sent",         limit: 255,                           default: "nein"
    t.string   "denial_sent",       limit: 255,                           default: "nein"
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                           default: "nein"
    t.string   "zus_voll",          limit: 255,                           default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                             default: 0
    t.date     "mahnungdate"
    t.string   "invoice",           limit: 255,                           default: "ja"
    t.string   "storno_send",       limit: 255,                           default: "nein"
    t.date     "storno_date"
    t.string   "formular",          limit: 255
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 8, scale: 2
    t.decimal  "paid_price",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "result_sent",                                             default: true
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8, scale: 2
    t.boolean  "age_fulfilled",                                           default: false
  end

  create_table "htseminars", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "country",           limit: 255
    t.string   "street",            limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.date     "date3"
    t.time     "from3"
    t.time     "to3"
    t.string   "language",          limit: 255
    t.integer  "participnumber",    limit: 4
    t.integer  "groupnumber",       limit: 4,                             default: 1
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "topic",             limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "food",              limit: 255
    t.integer  "foodnumber",        limit: 4
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                           default: "offen"
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                           default: "nein"
    t.string   "bill_sent",         limit: 255,                           default: "nein"
    t.string   "denial_sent",       limit: 255,                           default: "nein"
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                           default: "nein"
    t.string   "zus_voll",          limit: 255,                           default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                             default: 0
    t.date     "mahnungdate"
    t.string   "invoice",           limit: 255,                           default: "ja"
    t.string   "storno_send",       limit: 255,                           default: "nein"
    t.date     "storno_date"
    t.string   "formular",          limit: 255
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 8, scale: 2
    t.decimal  "paid_price",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "result_sent",                                             default: true
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8, scale: 2
    t.boolean  "age_fulfilled",                                           default: false
  end

  create_table "htsreferents", force: :cascade do |t|
    t.integer  "htseminar_id", limit: 4
    t.integer  "referent_id",  limit: 4
    t.integer  "mailsend",     limit: 4,   default: 0
    t.date     "maildate"
    t.string   "paid",         limit: 255, default: "nein"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "changed_by",   limit: 255
    t.datetime "changed_on"
  end

  create_table "opentourrefs", force: :cascade do |t|
    t.integer  "opentour_id", limit: 4
    t.integer  "referent_id", limit: 4
    t.integer  "mailsend",    limit: 4,   default: 0
    t.date     "maildate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "paid",        limit: 255, default: "nein"
    t.string   "changed_by",  limit: 255
    t.datetime "changed_on"
  end

  create_table "opentours", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.text     "comment",        limit: 65535
    t.string   "language",       limit: 255
    t.string   "status",         limit: 255,   default: "activ"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "participnumber", limit: 4,     default: 0
    t.string   "opentype",       limit: 255,   default: ""
    t.text     "infocenter",     limit: 65535
  end

  create_table "opentourwishes", force: :cascade do |t|
    t.integer  "opentour_id", limit: 4
    t.integer  "referent_id", limit: 4
    t.integer  "mailsend",    limit: 4, default: 0
    t.date     "maildate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referents", force: :cascade do |t|
    t.string   "gender",        limit: 255
    t.string   "firstname",     limit: 255
    t.string   "lastname",      limit: 255
    t.string   "tel",           limit: 255
    t.string   "email",         limit: 255
    t.string   "language1",     limit: 255
    t.string   "language2",     limit: 255
    t.string   "language3",     limit: 255
    t.text     "remarc",        limit: 65535
    t.integer  "vers",          limit: 4,     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tel2",          limit: 255
    t.string   "aktiv",         limit: 255,   default: "aktiv"
    t.string   "zip",           limit: 255,   default: ""
    t.string   "city",          limit: 255,   default: ""
    t.string   "street",        limit: 255,   default: ""
    t.string   "country",       limit: 255,   default: ""
    t.string   "bank",          limit: 255
    t.string   "blz",           limit: 255
    t.string   "konto",         limit: 255
    t.boolean  "lizenz_hts",                  default: false
    t.boolean  "lizenz_ts_all",               default: false
    t.boolean  "lizenz_ts_men",               default: false
    t.boolean  "lizenz_ts_er",                default: false
    t.boolean  "honorar",                     default: true
  end

  create_table "seminars", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "country",           limit: 255
    t.string   "street",            limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.date     "date3"
    t.time     "from3"
    t.time     "to3"
    t.string   "language",          limit: 255
    t.integer  "participnumber",    limit: 4
    t.integer  "groupnumber",       limit: 4,                             default: 1
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "topic",             limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "food",              limit: 255
    t.integer  "foodnumber",        limit: 4
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                           default: "offen"
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                           default: "nein"
    t.string   "bill_sent",         limit: 255,                           default: "nein"
    t.string   "denial_sent",       limit: 255,                           default: "nein"
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                           default: "nein"
    t.string   "zus_voll",          limit: 255,                           default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                             default: 0
    t.date     "mahnungdate"
    t.string   "invoice",           limit: 255,                           default: "ja"
    t.string   "storno_sent",       limit: 255,                           default: "nein"
    t.date     "storno_date"
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 8, scale: 2
    t.decimal  "paid_price",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "result_sent",                                             default: true
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8, scale: 2
    t.boolean  "age_fulfilled",                                           default: false
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themen_topics", force: :cascade do |t|
    t.string "content_type", limit: 255
    t.text   "content",      limit: 65535
    t.string "venue",        limit: 255
  end

  create_table "tourreferents", force: :cascade do |t|
    t.integer  "detour_id",   limit: 4
    t.integer  "referent_id", limit: 4
    t.integer  "mailsend",    limit: 4,   default: 0
    t.date     "maildate"
    t.string   "paid",        limit: 255, default: "nein"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "changed_by",  limit: 255
    t.datetime "changed_on"
  end

  create_table "ts_requests", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "country",           limit: 255
    t.string   "street",            limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.date     "date3"
    t.time     "from3"
    t.time     "to3"
    t.string   "language",          limit: 255
    t.integer  "participnumber",    limit: 4
    t.integer  "groupnumber",       limit: 4,                             default: 1
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "topic",             limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "food",              limit: 255
    t.integer  "foodnumber",        limit: 4
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                           default: "offen"
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                           default: "nein"
    t.string   "bill_sent",         limit: 255,                           default: "nein"
    t.string   "denial_sent",       limit: 255,                           default: "nein"
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                           default: "nein"
    t.string   "zus_voll",          limit: 255,                           default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                             default: 0
    t.date     "mahnungdate"
    t.string   "invoice",           limit: 255,                           default: "ja"
    t.string   "storno_sent",       limit: 255,                           default: "nein"
    t.date     "storno_date"
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 8, scale: 2
    t.decimal  "paid_price",                      precision: 8, scale: 2, default: 0.0
    t.boolean  "result_sent",                                             default: true
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8, scale: 2
    t.boolean  "age_fulfilled",                                           default: false
  end

  create_table "ts_topics", force: :cascade do |t|
    t.string "text",     limit: 255
    t.string "language", limit: 255
  end

  create_table "tsreferents", force: :cascade do |t|
    t.integer  "ts_request_id", limit: 4
    t.integer  "referent_id",   limit: 4
    t.integer  "mailsend",      limit: 4,   default: 0
    t.date     "maildate"
    t.string   "paid",          limit: 255, default: "nein"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "changed_by",    limit: 255
    t.datetime "changed_on"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname",                 limit: 255
    t.string   "lastname",                  limit: 255
    t.string   "role",                      limit: 255
    t.string   "login",                     limit: 255
    t.string   "crypted_password",          limit: 40
    t.string   "password_confirmation",     limit: 255
    t.string   "salt",                      limit: 40
    t.string   "remember_token",            limit: 255
    t.datetime "remember_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workreferents", force: :cascade do |t|
    t.integer  "workshop_id", limit: 4
    t.integer  "referent_id", limit: 4
    t.integer  "mailsend",    limit: 4,   default: 0
    t.date     "maildate"
    t.string   "paid",        limit: 255, default: "nein"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "changed_by",  limit: 255
    t.datetime "changed_on"
  end

  create_table "workshops", force: :cascade do |t|
    t.string   "gender",            limit: 255
    t.string   "firstname",         limit: 255
    t.string   "lastname",          limit: 255
    t.string   "telpriv",           limit: 255
    t.string   "telprivTime",       limit: 255
    t.string   "telbus",            limit: 255
    t.string   "telbusTime",        limit: 255
    t.string   "fax",               limit: 255
    t.string   "email",             limit: 255
    t.string   "schoolname",        limit: 255
    t.string   "schooltype",        limit: 255
    t.string   "zip",               limit: 255
    t.string   "city",              limit: 255
    t.string   "country",           limit: 255
    t.string   "street",            limit: 255
    t.date     "date1"
    t.time     "from1"
    t.time     "to1"
    t.integer  "participnumber",    limit: 4
    t.integer  "male",              limit: 4
    t.integer  "female",            limit: 4
    t.string   "age",               limit: 255
    t.string   "schoolgrade",       limit: 255
    t.integer  "teamleader",        limit: 4
    t.string   "havebeen",          limit: 255
    t.text     "reason",            limit: 65535
    t.text     "municstay",         limit: 65535
    t.string   "food",              limit: 255
    t.integer  "foodnumber",        limit: 4
    t.text     "remarc",            limit: 65535
    t.date     "thedate"
    t.string   "day",               limit: 255
    t.time     "thefrom"
    t.time     "theto"
    t.string   "status",            limit: 255,                            default: "offen"
    t.string   "referent",          limit: 255,                            default: ""
    t.text     "comments",          limit: 65535
    t.string   "paid",              limit: 255,                            default: "nein"
    t.string   "bill_sent",         limit: 255,                            default: "nein"
    t.string   "denial_sent",       limit: 255,                            default: "nein"
    t.string   "room",              limit: 255
    t.string   "last_change",       limit: 255
    t.string   "hl_number",         limit: 255
    t.string   "zus_form",          limit: 255,                            default: "nein"
    t.string   "zus_voll",          limit: 255,                            default: "nein"
    t.date     "zf_date"
    t.date     "zv_date"
    t.date     "denial_date"
    t.integer  "vers",              limit: 4,                              default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mahnung",           limit: 4,                              default: 0
    t.date     "mahnungdate"
    t.date     "date2"
    t.time     "from2"
    t.time     "to2"
    t.string   "invoice",           limit: 255,                            default: "ja"
    t.string   "storno_sent",       limit: 255,                            default: "nein"
    t.date     "storno_date"
    t.string   "invoice_number",    limit: 255
    t.decimal  "given_price",                     precision: 10
    t.decimal  "paid_price",                      precision: 10
    t.boolean  "result_sent",                                              default: true
    t.string   "set_paid_external", limit: 255
    t.datetime "set_paid_date"
    t.text     "infocenter",        limit: 65535
    t.string   "cellphone",         limit: 255
    t.decimal  "current_fee",                     precision: 8,  scale: 2
    t.boolean  "age_fulfilled",                                            default: false
  end

end
