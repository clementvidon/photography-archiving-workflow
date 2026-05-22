# Media Archiving Workflow

Keep control over your photos and videos.

Media Archiving is intended for anyone who wants to properly organize and archive personal visual
media files: camera photos, phone galleries, videos, screenshots, downloads, app-generated images,
and older unsorted folders.

The method helps keep files searchable and sortable over time by normalizing their identity:
filenames, dates, and useful metadata. It also checks that files are still readable before they are
archived, so problematic files can be caught before the originals are deleted.

## Core Utils

- **media-normalize**: normalize media metadata and give files consistent unique names.
- **media-sanity-check**: check whether media files are still readable/decodable.

## Method

Files come from a source such as a camera, a mobile phone, or an existing media folder. They are
imported locally, normalized, checked, sorted, and then archived.

There are two workflows:

- `Camera`: for controlled camera imports, organized by shooting session.
- `Phone`: for phone galleries and mixed media archives, organized by year.

While `Camera` usually has fewer formats and a lower risk of corrupted files, `Phone` can contain
files from many applications and formats, so normalization has a much bigger impact than just
renaming files.

```text
camera / phone
→ local import directory
→ normalize names + metadata
→ integrity check
→ select / edit
→ archive to pCloud / backup locations
```

## Examples

### After a shooting session with your camera

* Import your camera images into `Archiving/Camera/` on your computer.
* Run the scripts: normalize names and metadata, then check file integrity.
* Sort and edit the shooting as needed.
* Upload it to `YOUR_BACKUP_LOCATIONS/Camera/`, ideally multiple backup locations.
* After the archive has been uploaded and verified, remove the files from your camera and clean up `Archiving/Camera/`.

### After months of phone or mixed media files

* Import your phone gallery or mixed media files into `Archiving/Phone/` on your computer.
* Run the scripts: normalize names and metadata, then check file integrity.
* Sort your images and videos if it was not done yet.
* Upload it to `YOUR_BACKUP_LOCATIONS/Phone/`, ideally multiple backup locations.
* After the archive has been uploaded and verified, remove the files from your phone or source directory and clean up `Archiving/Phone/`.

After installation, both workflows are available in `Archiving/Camera/WORKFLOW.md` and `Archiving/Phone/WORKFLOW.md`.

## Install

```bash
git clone https://github.com/clementvidon/media-archiving-workflow
cd media-archiving-workflow
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
