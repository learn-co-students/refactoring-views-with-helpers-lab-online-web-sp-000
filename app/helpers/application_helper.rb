module ApplicationHelper

    def display_artist
        if artist
            <h3><%= link_to @song.artist_name, artist_path(@song.artist_id) %></h3>
        else
            <h3><%= link_to "Add Artist", song_path(@song)/edit %></h3>
        end
    end
end
