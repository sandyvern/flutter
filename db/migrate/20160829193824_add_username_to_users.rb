class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL code and modifies the database (currently, SQLite)
    add_column :users, :username, :string # add a new column to table users, called 'username' and of type 'string'
    add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. Second, ensure username is ALWAYS unique.
  end
end
