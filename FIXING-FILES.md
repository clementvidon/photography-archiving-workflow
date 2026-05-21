# Fixing Files

This section contains optional recovery and cleanup steps for problematic imports.

## Fix ownership and permissions

Use this when imported files are owned by another user, are not writable, or cannot be processed by the scripts.

```bash
sudo chown -R -- "$USER:$USER" .
find . -type d -exec chmod 755 {} +
find . -type f -exec chmod 644 {} +
```

## Re-encode problematic videos

Use this for readable videos that fail integrity checks, play incorrectly, or have timeline issues.

> **WARNING** Re-encoding is lossy, may not preserve metadata, and is not a guaranteed repair.

Original files are never overwritten. Outputs are written to `./reencoded/`.

```bash
video-reencode ./video.mov
video-reencode ./*.mov ./*.mp4
```
