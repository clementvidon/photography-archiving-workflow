# Personal Import Workflow

This workflow is designed for personal visual files: phone photos, phone videos, screenshots, downloads, and other app-generated visual files that belong to your visual archive.

## 1. Import files

Unlike controlled camera imports, personal files often come from many different sources. The goal is
to bring them into the archive without losing the context that makes them useful.

Create a local import directory and copy the files you want to process into it.

If the import contains different kinds of personal visual files, sort them into simple context-based folders before processing.

Example:

```text
personal-import
├── Gallery
├── Memories
├── Clippings
├── Inspo
└── Other
```

These categories are examples from my own archive. Use folders that match how you actually keep and retrieve your personal visual files.

> **Warning:** Do not delete the files from their source yet.

## 2. Normalize and check imported files

Normalize metadata, rename files, and check that they are still readable.

The tools process supported media files in the current directory only. They do not process subdirectories recursively.

Open a terminal inside each context folder and run:

```bash
media-normalize CV
media-sanity-check deep
```

I use `CV` as my initials. Feel free to choose your own filename prefix.

If files are problematic, see [`FIXING-FILES.md`](FIXING-FILES.md).

## 3. Select archive content

Select the files you want to keep, if this was not done before importing.

The goal is not to keep everything by default. Personal archives become more useful when they can be refined over time: selecting what still matters, removing weak or redundant files, and keeping only the material that remains useful, meaningful, or visually relevant.

## 4. Archive selected files

Move the kept files from your local import directory to your personal archive storage.

Archive storage can be a cloud-synced folder, an external drive, a NAS mount, or any other storage location.

For personal visual files, keep context-based categories in the archive structure. These categories preserve why the files were kept.

Example:

```text
Personal
└── 2026
    ├── Gallery
    │   └── CV26_0320_025038_31188070.JPG
    ├── Memories
    │   └── CV26_0320_025039_42139002.MP4
    ├── Clippings
    │   └── CV26_0321_111204_11890211.PNG
    ├── Inspo
    │   └── CV26_0402_184011_00422910.WEBP
    └── Other
        └── CV26_0410_093501_00088214.GIF
```

Use categories that match how you actually keep and retrieve personal visual files.

The filename stays stable. The folder structure preserves context.
