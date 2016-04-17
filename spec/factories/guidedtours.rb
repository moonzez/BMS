FactoryGirl.define do
  factory :guidedtour do
    firstname Faker::Name.first_name
    lastname Faker::Name.last_name
    language ['Deutsch', 'English'].sample
  end
end
=begin
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
=end
