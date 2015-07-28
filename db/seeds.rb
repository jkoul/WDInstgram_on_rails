require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"

Entry.destroy_all

gram_one = Entry.create( author: "Adrian", photo_url: "http://www.deism.com/images/Einstein_laughing.jpeg", date_taken: "January 10, 2000" )
gram_two = Entry.create( author: "Jimmy", photo_url: "https://www.timeshighereducation.co.uk/sites/default/files/Pictures/web/x/y/e/The_Pick_120112.jpg", date_taken: "February 29th, 2002" )
