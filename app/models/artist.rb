class Artist < ActiveRecord::Base
    has_many :songs

    def find_or_create_by(artist_info)
        if Artist.find(artist_info)
            Artist.find(artist_info)
        else
            Artist.create(artist_info)
        end
    end

    def song_count
        self.songs.count
    end
    
    
end
