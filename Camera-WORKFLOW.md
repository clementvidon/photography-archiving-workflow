# Camera Import Workflow

This workflow is designed for controlled camera imports, organized by shooting session.

> **WARNING** Do not edit the RAW before they have their final name from step 2.
> *Generated edition files may no longer work if they are located according to the old name of the file.*

1. Import camera files to your computer and open a terminal there.

> **WARNING** Don't delete the images from your camera right away as a precaution.

2. Clean metadata and rename files (with the `CV` prefix here):

```bash
media-normalize CV
```

If files cannot be normalized, see `../FIXING-FILES.md`.

3. Check integrity.

```bash
media-sanity-check deep
```

4. Select and edit the images.

5. Move files to the corresponding `pCloudDrive/Camera/YYYY` directory.

Create a subdirectory named `N-name`, where `N` is the shoot number for the year, and `name` is a short descriptive slug for the shoot.
Use `N-misc` for one-off images that don't correspond to any particular session.

Example:

```text
11-misc
12-palermo-weekend
```

Example:

```
Camera
└── 2026
    ├── 1-misc
    │   └── orphan_jpg
    │       └── CV26_0210_034133_32988978.JPG
    ├── 2-vertige-party
    │   ├── CV26_0320_025038_31188070.DNG
    │   ├── CV26_0320_025038_31188070.DNG.xmp
    │   └── darktable_exported
    │       └── CV26_0320_025038_31188070.JPG
    └── TAGS.md
```

Use `darktable_exported` for the final JPGs exported from Darktable.
Use `orphan_jpg` for the JPGs that do not have a corresponding RAW file.

6. Update `TAGS.md` and add a line with relevant details and keywords, such as people, locations, context, and project notes.

Example:

```
1-misc: Family garden during the sunset.
2-vertige-party: Masquerade party at Maxim's de Paris organized by Vertige.
```
