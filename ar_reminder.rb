#File: ar_reminder.rb
require "active_record"

#Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3",
:database => "testdb.sqlite")

#Define database schema, and create database "reminders"
class RemindersTableScript < ActiveRecord::Migration
   def self.up
    create_table :reminders do |t|
      t.string :task
      t.string :due_date
      t.string :completed
    end
  end

def self.down
     drop_table :reminders
  end
end

#Create the table that will be used in the database
RemindersTableScript.up

class Reminder < ActiveRecord::Base
end