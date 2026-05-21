# Fixing Files

This section contains optional recovery and cleanup steps for problematic imports.

## Fix ownership and permissions

Use this when imported files are owned by another user, are not writable, or cannot be processed by the scripts.

```bash
sudo chown -R -- "$USER:$USER" .
find . -type d -exec chmod 755 {} +
find . -type f -exec chmod 644 {} +
```
