# Photography Archiving Workflow

Photography Archiving Workflow is intended for photographers who want to keep camera files and phone
galleries organized, searchable, and ready for long-term storage.

It handles camera RAW/JPG imports, sidecar files, exported images, phone photos, phone videos,
screenshots, and other visual files that belong to a photographic archive.

The method normalizes filenames, dates, and useful metadata, then checks that files are still
readable before the originals are deleted.

For the reasoning behind this workflow, read: [A Living Photographic Archive](https://cvidon.com/writing/a-living-photographic-archive/).

Tested on GNU/Linux / Ubuntu for now. Only a few adjustments should be needed to make the workflow compatible with macOS.

## Tools

- **media-normalize**: normalize media metadata and rename files.
- **media-sanity-check**: check whether media files can still be read by common media tools.

## Renamed filename format

`media-normalize` renames files using this pattern:

```text
PREFIXYY_MMDD_HHMMSS_FILESIZE.EXT
```

Where `PREFIX` follows this convention:

```text
SOURCE_OWNER
```

Example:

```text
CAMERA_CV26_0320_025038_31188070.DNG
```

The prefix helps identify the source and owner of the file.

I use `CAMERA_CV` for camera files and `PHONE_CV` for phone files.

This makes the archive easier to scan later: `CAMERA` and `PHONE` identify the source, while `CV`
identifies my files.

The date and time come from the best available creation metadata.

The file size helps reduce filename collisions when multiple files share the same timestamp, and can
also help spot larger or less-compressed duplicates.

You can use your own source names, initials, or naming system.

## Method

Start by choosing an archive storage location.

This can be a cloud-synced folder, external drive, NAS mount, or any other place where final archived photography files should live.

There are two workflows:

- [`Camera`](CAMERA-WORKFLOW.md): for controlled camera imports, usually organized by dated shooting session.
- [`Phone`](PHONE-WORKFLOW.md): for phone galleries and app-generated visual files, usually organized by year.

```text
camera / phone
→ local import directory
→ normalize names + metadata
→ sanity check
→ select / edit
→ archive storage
```

The normalized filename is the stable baseline. The folder structure can stay simple or become more
specific depending on the archive.

`Phone` usually benefits more from normalization because it can contain files from many
applications, formats, and export paths.

## Install the CLI tools

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

Make sure `~/.local/bin` is in your `PATH`.

Detailed workflows are available in [`CAMERA-WORKFLOW.md`](CAMERA-WORKFLOW.md) and [`PHONE-WORKFLOW.md`](PHONE-WORKFLOW.md).

## Uninstall the CLI tools

```bash
cd photography-archiving-workflow
bash uninstall.sh
```
