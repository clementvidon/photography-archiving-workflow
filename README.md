# Photography Archiving Workflow

Photography Archiving Workflow is intended for photographers who want to keep camera files and phone
galleries organized, searchable, and ready for long-term storage.

It handles camera RAW/JPG imports, sidecar files, exported images, phone photos, phone videos,
screenshots, and other visual files that belong to a photographic archive.

The method helps keep files searchable and sortable over time by normalizing their identity:
filenames, dates, and useful metadata. It also checks that files are still readable before they are
archived, so problematic files can be caught before the originals are deleted.

It does not create encrypted backups by itself. Once media files are normalized, checked, and sorted
into archive storage, they can be backed up with any backup system.

Tested target: GNU/Linux / Ubuntu.

## Tools

- **media-normalize**: normalize media metadata and give files consistent unique names.
- **media-sanity-check**: check whether media files are still readable/decodable.

## Method

Files come from a camera or a phone gallery. They are imported locally, normalized, checked,
selected, edited when needed, and then archived.

There are two workflows:

- `Camera`: for controlled camera imports, organized by dated shooting session.
- `Phone`: for phone galleries, organized by year.

While `Camera` usually has fewer formats and a lower risk of corrupted files, `Phone` can contain
files from many applications and formats, so normalization has a much bigger impact than just
renaming files.

```text
camera / phone
→ local import directory
→ normalize names + metadata
→ integrity check
→ select / edit
→ archive to one or more archive storage locations
```

## Examples

Archive storage is the location where final archived photography files are stored.
It can be a cloud-synced folder, external drive, NAS mount, or any other storage location.

### After a shooting session with your camera

* Import your camera images into `Archiving/Camera/` on your computer.
* Run the scripts: normalize names and metadata, then check file integrity.
* Sort and edit the shooting as needed.
* Move the shoot directory into your camera archive storage.
* After the archive files have been verified and backed up as needed, remove the files from your camera and clean up `Archiving/Camera/`.

### After months of phone files

* Import your phone gallery into `Archiving/Phone/` on your computer.
* Run the scripts: normalize names and metadata, then check file integrity.
* Sort your images and videos if it was not done yet.
* Move the kept files into your phone archive storage.
* After the archive files have been verified and backed up as needed, remove the files from your phone and clean up `Archiving/Phone/`.

After installation, both workflows are available in `Archiving/Camera/WORKFLOW.md` and `Archiving/Phone/WORKFLOW.md`.

## Install

```bash
git clone https://github.com/clementvidon/photography-archiving-workflow
cd photography-archiving-workflow
bash install.sh
hash -r
```

Custom working directory:

```bash
bash install.sh "$HOME/Desktop/Archiving"
```

Install dependencies:

```bash
sudo apt install exiftool ffmpeg dcraw jpeginfo pngcheck webp libheif-examples
```
