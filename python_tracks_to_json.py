import json
import spotipy
from spotipy.oauth2 import SpotifyClientCredentials

# Replace with your actual Spotify Developer credentials
client_id = "SPOTIPY_CLIENT_ID"
client_secret = "SPOTIPY_CLIENT_SECRET"

# Authenticate
sp = spotipy.Spotify(auth_manager=SpotifyClientCredentials(client_id="SPOTIPY_CLIENT_ID",
                                                           client_secret="SPOTIPY_CLIENT_SECRET"))

# Sample Spotify Track URL or ID
track_url = "https://open.spotify.com/track/3n3Ppam7vgaVa1iaRUc9Lp"

# Extract track ID from URL
track_id = track_url.split("/")[-1].split("?")[0]

# Get metadata for the track
track_data = sp.track(track_id)

# Pretty print as JSON
print(json.dumps(track_data, indent=4))
