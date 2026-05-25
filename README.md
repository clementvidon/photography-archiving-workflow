# Photography Archiving Workflow

Photography Archiving Workflow is intended for photographers who want to keep camera files and phone
galleries organized, searchable, and ready for long-term storage.

It handles camera RAW/JPG imports, sidecar files, exported images, phone photos, phone videos,
screenshots, and other visual files that belong to a photographic archive.

The method normalizes filenames, dates, and useful metadata, then checks that files are still
readable before the originals are deleted.

Tested target: GNU/Linux / Ubuntu.

## Tools

- **media-normalize**: normalize media metadata and rename files as `PREFIXYY_MMDD_HHMMSS_FILESIZE.EXT`.
- **media-sanity-check**: check whether media files can still be read by common media tools.

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

## Install

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
