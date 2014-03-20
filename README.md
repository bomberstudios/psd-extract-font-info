psd-extract-font-info
=====================

A quick Ruby script to extract font information from PSD files

## Setup

- Clone this repository to your computer
- `cd` to your project folder, and run these:
- `sudo gem install bundler`
- `bundle install`

Once it's done installing things, check if everything's fine by running this:

`ruby extract-font-info.rb`

If you get the font information for the sample file (called 'demo.psd') you're ready to go.

## Extracting font info

Just run

`ruby extract-font-info.rb PATH_TO_YOUR_PSD_FILE`

and enjoy :)


## Disclaimer

This was a quick hack made in 5 minutes, and there are some issues I haven't investigated (example: apparently, psd.rb assumes your document is 72dpi when calculating font sizes, so you'll get the wrong numbers if your documents is, say, 144dpi).

You are on your own :)