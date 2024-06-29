#!/bin/sh

# Obtener la información de la canción actual
current_song=$(mpc current)

# Verificar si hay una canción en reproducción
if [ -z "$current_song" ]; then
    echo "No song playing"
else
    # Eliminar el artista y obtener solo el título de la canción
    # Asumimos que el formato es "Artista - Título" y eliminamos todo antes y incluyendo el guion y el espacio
    song_title=$(echo "$current_song" | sed 's/^[^-]* - //')
    echo "$song_title"
fi
