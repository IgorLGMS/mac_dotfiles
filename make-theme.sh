DIR=$HOME/Pictures/wallpapers

# remove manually Wal cache
rm -rf "$HOME/.cache/wal"

if [ -n "$1" ]; then
	if [ -f "$DIR/$1.png" ]; then
		# generate colors palette from argument
		wal -n -i "$DIR/$1.png" || echo "Failed set image"
	else
		if [ -f "$DIR/$1.jpg" ]; then
			# generate colors palette from argument
			wal -n -i "$DIR/$1.jpg" || echo "Failed set image"
		else
			# generate colors palette from argument
			wal -n -i "$DIR/$1" || echo "Failed set image"
		fi
	fi
else

# fetch random wallpaper from unsplash
curl -o "$DIR/today" -J -L "https://source.unsplash.com/random/3840x2160" > /dev/null 2>&1

# generate colors palette, skip setting wallpaper
wal -n -i "$DIR/today"

fi

# set wallpaper
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$(cat "$HOME/.cache/wal/wal")\""

# Restart Dock
killall Dock
