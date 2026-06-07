# Camera Import Workflow

This workflow is designed for controlled camera imports, organized by shooting session.

## 1. Import files

Create a local import directory named `MMDD-name`, where `MMDD` is the date of the first file in the shoot and `name` is a short descriptive slug.

Examples:

```text
0514-palermo-weekend
```

Copy the files into it.

> **Warning:** Do not delete the files from the camera yet.

## 2. Normalize and check imported files

Normalize metadata, rename files, and check that they are still readable.

RAW and video files are handled conservatively: useful dates are normalized, but destructive metadata rebuilding is avoided.

Open a terminal inside the import directory and run:

```bash
media-normalize CV
media-sanity-check deep
```

I use `CV` as my initials. Feel free to choose your own filename prefix.

If files are problematic, see [`FIXING-FILES.md`](FIXING-FILES.md).

## 3. Select, edit, and organize archive content

Select, edit, and export the images.

Keep together everything that belongs to the shoot:

- RAW files
- sidecar files, such as `.xmp`
- final exported files
- JPG-only files, when the image has value but keeping the RAW is unnecessary

Recommended internal structure:

```text
0514-palermo-weekend
├── CV26_0514_025038_31188070.DNG
├── CV26_0514_025038_31188070.DNG.xmp
├── exported
│   └── CV26_0514_025038_31188070.JPG
└── jpg_only
    └── CV26_0515_034133_32988978.JPG
```

Use `exported` for final exported JPGs.
Use `jpg_only` for JPGs kept without a corresponding RAW file.

## 4. Archive the shoot directory

Move the whole local import directory to your camera archive storage, under the corresponding year.

Archive storage can be a cloud-synced folder, an external drive, a NAS mount, or any other storage location.

Recommended archive structure:

```text
Camera
└── 2026
    ├── 0424-vertige-party
    └── 0514-palermo-weekend
```

## 5. Optionally add shoot notes

Optionally add a `README.md` file inside the shoot directory with context and keywords.

This keeps the shoot understandable on its own, even if the directory is moved, copied, or browsed outside a photo app.

Example:

```text
# 0514-palermo-weekend

Short Palermo trip.

Keywords:
Palermo, Sicily, street scenes, markets, waterfront, friends, travel, reportage
```
