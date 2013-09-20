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

ActiveRecord::Schema.define(version: 20130920080500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
    t.integer  "paper_id"
    t.string   "type"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["paper_id"], name: "index_attachments_on_paper_id", using: :btree

  create_table "award_categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "award_kinds", force: true do |t|
    t.string   "title"
    t.integer  "award_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "award_kinds", ["award_category_id"], name: "index_award_kinds_on_award_category_id", using: :btree

  create_table "awards", force: true do |t|
    t.integer  "organization_id"
    t.integer  "crew_id"
    t.integer  "person_id"
    t.integer  "paper_id"
    t.integer  "award_kind_id"
    t.integer  "reason_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "awards", ["award_kind_id"], name: "index_awards_on_award_kind_id", using: :btree
  add_index "awards", ["crew_id"], name: "index_awards_on_crew_id", using: :btree
  add_index "awards", ["organization_id"], name: "index_awards_on_organization_id", using: :btree
  add_index "awards", ["paper_id"], name: "index_awards_on_paper_id", using: :btree
  add_index "awards", ["person_id"], name: "index_awards_on_person_id", using: :btree
  add_index "awards", ["reason_id"], name: "index_awards_on_reason_id", using: :btree

  create_table "contractors", force: true do |t|
    t.string   "surname"
    t.string   "name"
    t.string   "patronymic"
    t.string   "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crews", force: true do |t|
    t.string   "title"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crews", ["organization_id"], name: "index_crews_on_organization_id", using: :btree

  create_table "organizations", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "papers", force: true do |t|
    t.integer  "signer_id"
    t.integer  "contractor_id"
    t.integer  "award_category_id"
    t.string   "type"
    t.string   "title"
    t.string   "number"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "papers", ["award_category_id"], name: "index_papers_on_award_category_id", using: :btree
  add_index "papers", ["contractor_id"], name: "index_papers_on_contractor_id", using: :btree
  add_index "papers", ["signer_id"], name: "index_papers_on_signer_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "surname"
    t.string   "name"
    t.string   "patronymic"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["organization_id"], name: "index_people_on_organization_id", using: :btree

  create_table "reasons", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signers", force: true do |t|
    t.string   "surname"
    t.string   "name"
    t.string   "patronymic"
    t.string   "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_taggables", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags_taggables", ["tag_id"], name: "index_tags_taggables_on_tag_id", using: :btree

end
