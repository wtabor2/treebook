class AddFavoritesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hobbies, :array
    add_column :users, :movies, :array
    add_column :users, :bands, :array
    add_column :users, :tv_shows, :array
    add_column :users, :books, :array
  end
end
