#!/usr/bin/env bash

# Exit on error or unset variable
set -euo pipefail

# Path to the game server binary
SERVER_BIN="/app/MultiServer.py"

# Initialize an array to hold arguments
ARGS=()

# GAME_PATH: added as a positional argument (no flag)
if [[ -n "${WORLD:-}" ]]; then
    ARGS+=("$WORLD")
fi

# PORT: maps to --port <value>
if [[ -n "${PORT:-}" ]]; then
    ARGS+=("--port" "$PORT")
fi

# HOST: maps to --host <value>
if [[ -n "${HOST:-}" ]]; then
    ARGS+=("--host" "$HOST")
fi

# SERVER_PASSWORD: maps to --server_password <value>
if [[ -n "${SERVER_PASSWORD:-}" ]]; then
    ARGS+=("--server_password" "$SERVER_PASSWORD")
fi

# PASSWORD: maps to --password <value>
if [[ -n "${PASSWORD:-}" ]]; then
    ARGS+=("--password" "$PASSWORD")
fi

# SAVE_FILE: maps to --save-file <value>
if [[ -n "${SAVE_FILE:-}" ]]; then
    ARGS+=("--savefile" "$SAVE_FILE")
fi

#TODO disable save

# CERT: maps to --cert <value>
if [[ -n "${CERT:-}" ]]; then
    ARGS+=("--cert" "$CERT")
fi

# CERT_KEY: maps to --cert_key <value>
if [[ -n "${CERT_KEY:-}" ]]; then
    ARGS+=("--cert_key" "$CERT_KEY")
fi

# LOGLEVEL: maps to --loglevel <value>
if [[ -n "${LOGLEVEL:-}" ]]; then
    ARGS+=("--loglevel" "$LOGLEVEL")
fi

#TODO: logtime

# LOCATION_CHECK_POINTS: maps to --location_check_points <value>
if [[ -n "${LOCATION_CHECK_POINTS:-}" ]]; then
    ARGS+=("--location_check_points" "$LOCATION_CHECK_POINTS")
fi

# HINT_COST: maps to --hint_cost <value>
if [[ -n "${HINT_COST:-}" ]]; then
    ARGS+=("--hint_cost" "$HINT_COST")
fi

# RELEASE_MODE: maps to --release_mode <value>
if [[ -n "${RELEASE_MODE:-}" ]]; then
    ARGS+=("--release_mode" "$RELEASE_MODE")
fi

# COLLECT_MODE: maps to --collect_mode <value>
if [[ -n "${COLLECT_MODE:-}" ]]; then
    ARGS+=("--collect_mode" "$COLLECT_MODE")
fi

# COUNTDOWN_MODE: maps to --countdown_mode <value>
if [[ -n "${COUNTDOWN_MODE:-}" ]]; then
    ARGS+=("--countdown_mode" "$COUNTDOWN_MODE")
fi

# REMAINING_MODE: maps to --remaining_mode <value>
if [[ -n "${REMAINING_MODE:-}" ]]; then
    ARGS+=("--remaining_mode" "$REMAINING_MODE")
fi

#TODO autoshutdown

#TODO embeded options

# COMPATIBILITY: maps to --compatibility <value>
if [[ -n "${COMPATIBILITY:-}" ]]; then
    ARGS+=("--compatibility" "$COMPATIBILITY")
fi

#TODO log network

# Optional: show the final command for debugging
echo "Starting Archipelago Server:"
echo "python $SERVER_BIN ${ARGS[*]}"

# Execute the command
exec "python" "$SERVER_BIN" "${ARGS[@]}"