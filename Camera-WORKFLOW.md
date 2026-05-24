# Camera Import Workflow

This workflow is designed for controlled camera imports, organized by shooting session.

## 1. Import files

Create a local import directory named `MMDD-name`, where `MMDD` is the date of the first photo in the shoot and `name` is a short descriptive slug.

Examples:

```text
0526-palermo-weekend
```

Import camera files into this directory.

> **WARNING** Don't delete the images from your camera right away as a precaution.

## 2. Normalize and check imported files

Clean metadata, rename files, and check that they are readable/decodable.

Open a terminal inside this import directory and run:

```bash
media-normalize CV
media-sanity-check deep
```

If files cannot be normalized or checked, see `../FIXING-FILES.md`.

## 3. Select, edit, and prepare archive content

Select and edit the images.

Keep together everything that belongs to the shoot:

- RAW files
- sidecar files, such as `.xmp`
- final exported files
- JPG-only files, when the image does not worth keeping the RAW

Recommended internal structure:

```text
0526-palermo-weekend
├── CV26_0320_025038_31188070.DNG
├── CV26_0320_025038_31188070.DNG.xmp
├── darktable_exported
│   └── CV26_0320_025038_31188070.JPG
└── jpg_only
    └── CV26_0210_034133_32988978.JPG
```

Use `darktable_exported` for final JPGs exported from Darktable.
Use `jpg_only` for JPGs kept without a corresponding RAW file.

At the end of this step, the import directory should be ready to archive.

## 4. Archive the shoot directory

Move the whole `MMDD-name` directory into your camera archive storage, under the corresponding year.

Archive storage can be a cloud-synced folder, an external drive, a NAS mount, or any other storage location.

Recommended archive structure:

```text
Camera
└── 2026
    ├── 0424-vertige-party
    ├── 0526-palermo-weekend
    └── TAGS.md
```

## 5. Update archive notes

Update `TAGS.md` and add a line with relevant details and keywords: people, locations, context, and project notes.

Example:

```text
0424-vertige-party: Masquerade party at Maxim's de Paris organized by Vertige.
0526-palermo-weekend: Short Palermo trip, street scenes, markets, waterfront, friends.
```
