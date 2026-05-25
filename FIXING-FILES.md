# Fixing Files

Optional recovery steps for problematic imports.

## Fix ownership and permissions

Use this when imported files are owned by another user or cannot be modified by the scripts.

```bash
sudo chown -R -- "$USER:$USER" .
find . -type d -exec chmod 755 {} +
find . -type f -exec chmod 644 {} +
```

## Re-encode problematic videos

Use this for readable videos that fail checks, play incorrectly, or have timeline issues.

> **WARNING** Re-encoding is lossy, may strip metadata, and is not a guaranteed repair.

Original files are never overwritten. Outputs are written to `./reencoded/`.

```bash
video-reencode ./video.mov
video-reencode ./*.mov ./*.mp4
```
