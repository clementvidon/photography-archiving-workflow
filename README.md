# Photography Archiving Workflow

Photography Archiving Workflow is intended for photographers who want to keep camera files and personal visual files organized, searchable, and ready for long-term storage.

It handles camera RAW/JPG imports, sidecar files, exported images, phone photos, phone videos, screenshots, and other visual files that belong to a personal visual archive

The workflow normalizes filenames, dates, and useful metadata, then checks that files are still readable before originals are deleted.

For the reasoning behind this workflow, read: [A Living Visual Archive](https://cvidon.com/writing/a-living-visual-archive/).

Tested on GNU/Linux / Ubuntu for now. macOS is not supported yet, but the workflow should be portable with small shell and dependency adjustments.

## Tools

- **media-normalize**: normalize media metadata and rename files.
- **media-sanity-check**: check whether media files can still be read by common media tools.

The tools process supported media files in the current directory only. They do not process subdirectories recursively.

## Renamed filename format

`media-normalize` renames files using this simple pattern:

```text
PREFIXYY_MMDD_HHMMSS_FILESIZE.EXT
```

Example:

```text
CV26_0320_025038_31188070.DNG
```

I personally use my initials `CV` as a prefix to indicate that these are my files.

The date and time come from the best available creation metadata.

The file size helps reduce filename collisions when multiple files share the same timestamp, and can
also help spot larger or less-compressed versions and duplicates if sorted by name.

## Method

Start by choosing an archive storage location.

This can be a cloud-synced folder, external drive, NAS mount, or any other place where final archived photography files should live.

There are two workflows:

- [`Camera`](CAMERA-WORKFLOW.md): for controlled camera imports, usually organized by dated shooting session.
- [`Personal`](PERSONAL-WORKFLOW.md): for personal visual files, usually organized by year and context-based categories.

```text
camera / personal
→ local import directory
→ normalize names + metadata
→ sanity check
→ select / edit
→ archive storage
```

The goal is not to keep adding files forever. A good archive should also be easy to refine over time: select better, remove what no longer matters, split or merge categories, and reorganize files without losing context or breaking the structure.

The normalized filename is the stable baseline. The folder structure can stay simple or become more specific depending on the archive.

`Personal` usually benefits more from normalization because it can contain files from many applications, formats, and export paths.

## Install the CLI tools

Install dependencies:

```bash
sudo apt install exiftool ffmpeg jpeginfo pngcheck webp libheif-examples libraw-bin
```

Install the workflow tools:

```bash
git clone https://github.com/clementvidon/photography-archiving-workflow
cd photography-archiving-workflow
bash install.sh
hash -r
```

Make sure `~/.local/bin` is in your `PATH`.

Detailed workflows are available in [`CAMERA-WORKFLOW.md`](CAMERA-WORKFLOW.md) and [`PERSONAL-WORKFLOW.md`](PERSONAL-WORKFLOW.md).

## Uninstall the CLI tools

```bash
cd photography-archiving-workflow
bash uninstall.sh
```
