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

ActiveRecord::Schema.define(version: 20141212225431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: true do |t|
    t.string  "playerID"
    t.string  "coachID"
    t.string  "hofID"
    t.string  "firstName"
    t.string  "lastName"
    t.string  "nameNote"
    t.string  "nameGiven"
    t.string  "nameNick"
    t.integer "height"
    t.integer "weight"
    t.string  "shootCatch"
    t.string  "legendsID"
    t.string  "ihdbID"
    t.string  "hrefID"
    t.integer "firstNHL"
    t.integer "lastNHL"
    t.integer "firstWHA"
    t.integer "lastWHA"
    t.string  "pos"
    t.integer "birthYear"
    t.integer "birthMon"
    t.integer "birthDay"
    t.string  "birthCountry"
    t.string  "birthState"
    t.string  "birthCity"
    t.integer "deathYear"
    t.integer "deathMon"
    t.integer "deathDay"
    t.string  "deathCountry"
    t.string  "deathState"
    t.string  "deathCity"
  end

  create_table "scoring_seasons", force: true do |t|
    t.string  "playerID"
    t.integer "year"
    t.integer "stint"
    t.string  "tmID"
    t.string  "lgID"
    t.string  "pos"
    t.integer "GP"
    t.integer "G"
    t.integer "A"
    t.integer "Pts"
    t.integer "PIM"
    t.integer "+/-"
    t.integer "PPG"
    t.integer "PPA"
    t.integer "SHG"
    t.integer "SHA"
    t.integer "GWG"
    t.integer "GTG"
    t.integer "SOG"
    t.integer "PostGP"
    t.integer "PostG"
    t.integer "PostA"
    t.integer "PostPts"
    t.integer "PostPIM"
    t.integer "Post+/-"
    t.integer "PostPPG"
    t.integer "PostPPA"
    t.integer "PostSHG"
    t.integer "PostSHA"
    t.integer "PostGWG"
    t.integer "PostSOG"
  end

  create_table "teams", force: true do |t|
    t.integer "year"
    t.string  "lgID"
    t.string  "tmID"
    t.string  "franchID"
    t.string  "confID"
    t.string  "divID"
    t.integer "rank"
    t.string  "playoff"
    t.integer "G"
    t.integer "W"
    t.integer "L"
    t.integer "T"
    t.integer "OTL"
    t.integer "Pts"
    t.integer "SoW"
    t.integer "SoL"
    t.integer "GF"
    t.integer "GA"
    t.string  "name"
    t.integer "PIM"
    t.integer "BenchMinor"
    t.integer "PPG"
    t.integer "PPC"
    t.integer "SHA"
    t.integer "PKG"
    t.integer "PKC"
    t.integer "SHF"
  end

end
