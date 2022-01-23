resource "spotify_playlist" "playlist" {
  name        = "terraformed 2ks"
  description = "This Playlist have my favorite songs from the late 90s & 2ks and this was created using the terraform :)"
  public      = true

  tracks = [
    data.spotify_track.en_veettu_thottathil_gentleman.id,
    data.spotify_track.Pudhu_Vellai_Mazhai.id,
    data.spotify_track.Anbendra_Mazhaiyile.id,
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_name.tracks[0].id,
    data.spotify_track.Suthi_suthi.id,
    data.spotify_track.Mathadu_mathadu_mallige.id,
    data.spotify_track.Thendral_Vanthu.id,    
  ]
}


data "spotify_track" "en_veettu_thottathil_gentleman" {
  url = "https://open.spotify.com/track/3mRb10pErMGcLNepfuCV2j?si=4fbd0aebceaa40af"
}
data "spotify_track" "Pudhu_Vellai_Mazhai" {
  url = "https://open.spotify.com/track/32j96Gl0BjQHAVdMPxin43?si=4999886132384039"
}
data "spotify_track" "Anbendra_Mazhaiyile" {
  url = "https://open.spotify.com/track/0jOsAuQvYMa6hKX7KRsI1T?si=899755395aa04ed1"
}
data "spotify_search_track" "by_artist" {
  artist = "Sadhana Sargam"
  album  = "Kandukondain Kandukondain"
  name   = "Konjum Mainaakkale"
}
data "spotify_search_track" "by_name" {
  #artist = "Unnikrishnan"
  #album = "Kadhalan"
  name = "Ennavale Adi Ennavale"
}
data "spotify_track" "Suthi_suthi" {
  url = "https://open.spotify.com/track/3J4FqVE5OOolqgFKDVgxUH?si=eebda4b0122e486a"
}
data "spotify_track" "Mathadu_mathadu_mallige" {
  url = "https://open.spotify.com/track/3rajhbfUUWiTzSm4WmLOm7?si=b71137d9e31f481f"
}
data "spotify_track" "Thendral_Vanthu" {
  url = "https://open.spotify.com/track/21So81Yl6lkVgNWMs33JtV?si=5d8470ddc2a24b74"
}