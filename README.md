# Spotify Data Analytics 🎧

This project extracts metadata from Spotify track URLs using the Spotify Web API, visualizes data, and stores it in a MySQL database.

---

## 📁 Project Structure

- `spotify.py` – Extract metadata of a single track, visualize, and save as CSV.
- `spotify_mysql.py` – Insert one track's metadata into MySQL.
- `spotify_mysql_urls.py` – Process multiple track URLs and insert them into MySQL.
- `track_urls.txt` – A list of Spotify track URLs.
- `spotify.sql` – SQL commands to create the database and analyze data.
- `spotify_track_data.csv` – Auto-generated CSV containing track metadata.

---

## 🚀 How to Run

1. **Install dependencies**:
    ```bash
    pip install spotipy pandas matplotlib mysql-connector-python
    ```

2. **Set up MySQL**:
    - Run the commands in `spotify.sql` using MySQL Workbench or command line.

3. **Run scripts**:
    - `spotify.py` – View single track metadata, save CSV, visualize
    - `spotify_mysql.py` – Save one track into MySQL
    - `spotify_mysql_urls.py` – Save multiple tracks from `track_urls.txt` into MySQL

---

## 👨‍💻 Author

Sundar (2025)

---

## 🧠 Requirements

- Python 3.x  
- MySQL Server  
- Spotify Developer Account with `client_id` and `client_secret`

---
