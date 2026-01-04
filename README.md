# Archipelago Server Docker
## The Project
This project is intended to help setup simple Archipelago servers in a docker environment. This is a fan project and is not officially affiliated with the Archipelago project in any way.
This docker image is not intended to be used for generating Archipelago multiworlds or templates and is only for hosting a generated world. Please refer to the Archipelago website or App for information on how to generate a world

## Usage Guide
You can find built versions of the image on docker hub [here](https://hub.docker.com/r/nmills688/archipelago-server/)

## Volumes
| Container Path | Required | Description |
| -------------- | -------- | ----------- |
| /worlds/ | Yes | The folder which will contain your generated multiworlds  |
| /app/custom_worlds | No | Contains custom .apworld files for unofficial games |


## Environment Variables
Please refer to the official Archipelago documentation for the default values and available options for these arguments.
These names are case sensitive
| Name                     | Mapped To                     | Required |
|--------------------------|-------------------------------|----------|
| WORLD                    | N/A                           | Yes      |
| PORT                     | --port                        | No       |
| HOST                     | --host                        | No       |
| SERVER_PASSWORD          | --server_password             | No       |
| PASSWORD                 | --password                    | No       |
| SAVE_FILE                | --savefile                    | No       |
| CERT                     | --cert                        | No       |
| CERT_KEY                 | --cert_key                    | No       |
| LOGLEVEL                 | --loglevel                    | No       |
| LOCATION_CHECK_POINTS    | --location_check_points       | No       |
| HINT_COST                | --hint_cost                   | No       |
| RELEASE_MODE             | --release_mode                | No       |
| COLLECT_MODE             | --collect_mode                | No       |
| COUNTDOWN_MODE           | --countdown_mode              | No       |
| REMAINING_MODE           | --remaining_mode              | No       |
| COMPATIBILITY            | --compatibility               | No       |
