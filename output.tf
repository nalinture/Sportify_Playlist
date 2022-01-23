output "playlist_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}

output "gentleman_song_ids" {
  value = data.spotify_track.en_veettu_thottathil_gentleman.id
}

output "kadhalan_song_ids" {
  value = data.spotify_search_track.by_name.id
}