# Project Qogirl6: Detection Rules

## YARA (Static Analysis)
Ejecutar sobre imágenes de firmware o APKs extraídos:
```bash
yara -r detection/yara/*.yar /path/to/firmware_image
yara -r detection/yara/*.yar /path/to/apk_file

# Query local (en el dispositivo con root)
velociraptor query --from_files detection/vql/project_qogirl6_triage.vql

# Query remota (desde el servidor)
velociraptor --api_config api.config.yaml query \
  --client_id C.XXXXXXXXXXXXX \
  --from_files detection/vql/project_qogirl6_triage.vql \
  --format json

# Instalar dependencias
pip install sigma-cli pysigma-backend-splunk

# Convertir a Splunk
sigma convert -t splunk -p splunk_windows detection/sigma/project_qogirl6_*.yml 

# Convertir a Elasticsearch
sigma convert -t elasticsearch -p ecs_windows detection/sigma/project_qogirl6_*.yml 

# Batch: convertir toda la carpeta
sigma convert -t splunk -p splunk_windows -d detection/sigma/ -o splunk_output/

```markdown
# Project Qogirl6: IOCs Quick Reference

## Domains & Hosts
- sh-16-52.rnd.longcheer.net
- fota.longcheer.com
- 10.215.173.2 (DNS)

## File Paths
- /vendor/overlay/unisoc_overlay_power_qogirl6.apk
- /vendor/etc/sunwave_config.xml
- /vendor/etc/motorola/12m/cqatest_cfg

## Process Names
- wcn_chr
- linkturbonative
- sprd_networkcontrol

## Package Names
- com.spreadtrum.sgps
- com.motorola.motocit
- com.dti.amx
- com.inmobi.installer

## Hashes (SHA256)
- 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d (STK/IMS)
- 27196E386B875E76ADF700E7EA84E4C6EEE33DFA (OEM Cert)   
