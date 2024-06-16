#!/usr/bin/env python3
import json
import subprocess
import sys
import random

def get_current_music_title():
    title = subprocess.getoutput('playerctl metadata title')
    if 'No players found' in title:
        return ""
    artist = subprocess.getoutput('playerctl metadata artist')
    player = subprocess.getoutput("playerctl metadata --format '{{playerName}}'")
    if "chromium" in player:
        player = ""
    elif "spotify" in player: 
        player = ""
    else:
        player = "󰎆"

    animation = playing()
    return f"{player} {title} - {artist} {animation}"

def print_line(message):
    """ Non-buffered printing to stdout. """
    sys.stdout.write(message + '\n')
    sys.stdout.flush()


def read_line():
    """ Interrupted respecting reader for stdin. """
    # try reading a line, removing any extra whitespace
    try:
        line = sys.stdin.readline().strip()
        # i3status sends EOF, or an empty line
        if not line:
            sys.exit(3)
        return line
    # exit on ctrl-c
    except KeyboardInterrupt:
        sys.exit()

def random_color():
    color = "#999"
    player = subprocess.getoutput("playerctl metadata --format '{{playerName}}'")
    if "chromium" in player:
        color = "#777777"
    elif "spotify" in player: 
        color = "#1DB954"
    return color

def playing():
    animation = ["⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷"]
    return random.choice(animation)

if __name__ == '__main__':
    # Skip the first line which contains the version header.
    print_line(read_line())

    # The second line contains the start of the infinite array.
    print_line(read_line())

    while True:
        line, prefix = read_line(), ''

        # ignore comma at start of lines
        if line.startswith(','):
            line, prefix = line[1:], ','
        j = json.loads(line)

        music_title = get_current_music_title()
        # this is where the magic happens
        # https://i3wm.org/docs/i3bar-protocol.html
        j.insert(0, {
            # 'background': '#FFFFFF',
            'full_text': ' %s' % music_title,
            'color': random_color(),
            'name': 'music_title',
            'separator_block_width': 25})

        print_line(prefix+json.dumps(j))

