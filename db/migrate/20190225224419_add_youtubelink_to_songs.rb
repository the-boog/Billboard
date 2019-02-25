class AddYoutubelinkToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :youtubelink, :string
  end
end
