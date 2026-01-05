# Archipelago Server Docker
## The Project
This project is intended to help setup simple Archipelago servers in a docker environment. This is a fan project and is not officially affiliated with the Archipelago project in any way.
This docker image is not intended to be used for generating Archipelago multiworlds or templates and is only for hosting a generated world. Please refer to the Archipelago website or App for information on how to generate a world

## Usage Guide
You can find built versions of the image on [docker hub](https://hub.docker.com/r/nmills688/archipelago-server/)

## Volumes
| Container Path | Required | Description |
| -------------- | -------- | ----------- |
| /games/ | Yes | The folder which will contain your generated multiworld games  |


## Environment Variables
Please refer to the official Archipelago documentation for the default values and available options for these arguments.
These names are case sensitive. Please note that anything that accepts a bool will simply add that flag if the value of the argument is true
| Name                   | Mapped To                      | Type   | Required |
|------------------------|--------------------------------|--------|----------|
| GAME_PATH              | N/A                            | text   | Yes      |
| PORT                   | --port                         | number | No       |
| HOST                   | --host                         | text   | No       |
| SERVER_PASSWORD        | --server_password              | text   | No       |
| PASSWORD               | --password                     | text   | No       |
| SAVE_FILE              | --savefile                     | text   | No       |
| DISABLE_SAVE           | --disable_save                 | bool   | No       |
| CERT                   | --cert                         | text   | No       |
| CERT_KEY               | --cert_key                     | text   | No       |
| LOGLEVEL               | --loglevel                     | text   | No       |
| LOGTIME                | --logtime                      | bool   | No       |
| LOCATION_CHECK_POINTS  | --location_check_points        | number | No       |
| HINT_COST              | --hint_cost                    | number | No       |
| RELEASE_MODE           | --release_mode                 | text   | No       |
| COLLECT_MODE           | --collect_mode                 | text   | No       |
| COUNTDOWN_MODE         | --countdown_mode               | text   | No       |
| REMAINING_MODE         | --remaining_mode               | text   | No       |
| USE_EMBEDDED_OPTIONS   | --use_embedded_options         | bool   | No       |
| COMPATIBILITY          | --compatibility                | text   | No       |
| LOG_NETWORK            | --log_network                  | bool   | No       |
