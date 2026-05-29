# Phone Import Workflow

This workflow is designed for phone galleries: photos, videos, screenshots, downloads, and other
app-generated images that belong to your visual archive.

## 1. Import files

Import your phone gallery into a local import directory.

> **WARNING** Don't delete the original files from your phone right away as a precaution.

## 2. Normalize and check imported files

Clean metadata, rename files, and check that they are readable/decodable.

Open a terminal inside the import directory and run:

```bash
media-normalize PHONE_CV
media-sanity-check deep
```

I use `PHONE_CV` prefix for phone files.

If files are problematic, see `FIXING-FILES.md`.

## 3. Select and organize archive content

Select the files you want to keep, if this was not done before importing.

## 4. Archive selected files

Move the kept files from your local import directory to your phone archive storage.

Archive storage can be a cloud-synced folder, an external drive, a NAS mount, or any other storage location.

The simplest structure is year-based:

```text
Phone
└── 2026
    ├── PHONE_CV26_0320_025038_31188070.JPG
    ├── PHONE_CV26_0320_025039_42139002.MP4
    └── PHONE_CV26_0321_111204_11890211.PNG
```

If the archive becomes too dense, keep the same `PHONE_CV` source prefix and refine the folder structure by use:

```text
Phone
└── 2026
    ├── photos
    │   └── PHONE_CV26_0320_025038_31188070.JPG
    ├── videos
    │   └── PHONE_CV26_0320_025039_42139002.MP4
    └── memories
        └── PHONE_CV26_0321_111204_11890211.PNG
```

The source remains the same; the use becomes more precise in the folder structure.
