# Phone and Media Library Import Workflow

This workflow is designed for phone galleries and mixed media archives: photos, videos, screenshots, downloads, app-generated images, and older unsorted media collections.

1. Import media files to your computer and open a terminal there.

> **WARNING** Don't delete the original files from your phone or source directory right away as a precaution.

2. Clean metadata and rename files (with the `PHONE_CV` prefix here):

```bash
media-normalize PHONE_CV
```

If files cannot be normalized, see `../FIXING-FILES.md`.

3. Check integrity.

```bash
media-sanity-check deep
```

4. Select the media files you want to keep (if not done before step 1).

5. Move files to the corresponding `pCloudDrive/Phone/YYYY` directory.

Example:

```
Phone
└── 2026
    └── CV26_0320_025038_31188070.JPG
```
