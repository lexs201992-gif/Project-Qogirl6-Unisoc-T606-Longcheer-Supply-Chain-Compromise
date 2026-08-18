# Project Qogirl6: Detection Rules

## YARA (Static Analysis)
Ejecutar sobre imágenes de firmware o APKs extraídos:
```bash
yara -r yara/*.yar /path/to/firmware_image
yara -r yara/*.yar /path/to/apk_file   
