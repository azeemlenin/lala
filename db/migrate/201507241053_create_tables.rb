require_relative '../config'

class CreateTables < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :title
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :name_suffix
      t.string :nickname
      t.string :party
      t.string :state
      t.string :district
      t.integer :in_office
      t.string :gender
      t.string :phone
      t.string :fax
      t.string :website
      t.string :webform
      t.string :congress_office
      t.string :bioguide_id
      t.integer :votesmart_id
      t.integer :fec_id
      t.integer :govtrack_id
      t.integer :crp_id
      t.integer :twitter_id
      t.string :congresspedia_url
      t.string :youtube_url
      t.string :facebook_id
      t.string :official_rss
      t.string :senate_class
      t.date :birthdate

      t.timestamps null: false
    end
  end
end