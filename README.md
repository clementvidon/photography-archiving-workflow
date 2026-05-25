# Photography Archiving Workflow

Photography Archiving Workflow is intended for photographers who want to keep camera files and phone
galleries organized, searchable, and ready for long-term storage.

It handles camera RAW/JPG imports, sidecar files, exported images, phone photos, phone videos,
screenshots, and other visual files that belong to a photographic archive.

The method normalizes filenames, dates, and useful metadata, then checks that files are still
readable before the originals are deleted.

Tested target: GNU/Linux / Ubuntu.

## Tools

- **media-normalize**: normalize media metadata and rename files.
- **media-sanity-check**: check whether media files can still be read by common media tools.

## Renamed filename format

`media-normalize` renames files using this pattern: `PREFIXYY_MMDD_HHMMSS_FILESIZE.EXT`

Example: `CV26_0320_025038_31188070.DNG`

The prefix helps identify the source or owner of the file.

I use `CV` for camera files and `PHONE_CV` for phone files.

This makes the archive easier to scan later: `CV` identifies my images, while `PHONE_CV` also separates phone files from camera files.

The date and time come from the best available creation metadata.

The file size helps reduce filename collisions when multiple files share the same timestamp, and can also help spot larger or less-compressed duplicates.

You can use your own initials or naming system.

## Method

Start by choosing an archive storage location.

This can be a cloud-synced folder, external drive, NAS mount, or any other place where final archived photography files should live.

There are two workflows:

- [`Camera`](CAMERA-WORKFLOW.md): for controlled camera imports, organized by dated shooting session.
- [`Phone`](PHONE-WORKFLOW.md): for phone galleries, organized by year.

```text
camera / phone
→ local import directory
→ normalize names + metadata
→ sanity check
→ select / edit
→ archive storage
```

`Phone` usually benefits more from normalization because it can contain files from many
applications, formats, and export paths.

## Install the GUI tools

Open the `gui/` directory and double-click:

```text
Install Photography Archiving Workflow
```

On Ubuntu/GNOME, you may need to right-click the launcher and choose **Allow Launching** the first time.

## Install the command-line tools

Install dependencies:

```bash
sudo apt install exiftool ffmpeg dcraw jpeginfo pngcheck webp libheif-examples
```

Install the workflow tools:

```bash
git clone https://github.com/clementvidon/photography-archiving-workflow
cd photography-archiving-workflow
bash install.sh
hash -r
```

Detailed workflows are available in [`CAMERA-WORKFLOW.md`](CAMERA-WORKFLOW.md) and [`PHONE-WORKFLOW.md`](PHONE-WORKFLOW.md).

## Uninstall

To uninstall from the GUI, launch:

```text
Uninstall Photography Archiving Workflow
```

from the Ubuntu application menu.

To uninstall from the terminal, remove the installed tools and launchers:

```bash
rm -f "$HOME/.local/bin/media-normalize"
rm -f "$HOME/.local/bin/media-sanity-check"
rm -f "$HOME/.local/bin/video-reencode"
rm -f "$HOME/.local/bin/normalize-media-gui"
rm -f "$HOME/.local/bin/sanity-check-gui"
rm -f "$HOME/.local/bin/uninstall-photography-archiving-workflow"

rm -f "$HOME/.local/share/applications/normalize-media.desktop"
rm -f "$HOME/.local/share/applications/media-sanity-check.desktop"
rm -f "$HOME/.local/share/applications/uninstall-photography-archiving-workflow.desktop"
```

This does not delete your photos, media files, archives, logs, or system packages installed with `apt`.
