module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artists(preference)
    if preference.artist_sort_order.downcase == "asc"
      Artist.order(name: :asc)
    elsif preference.artist_sort_order.downcase == "desc"
      Artist.order(name: :desc)
    end
  end

end
