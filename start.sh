#!/usr/bin/env bash

# Exit on error or unset variable
set -euo pipefail

# Path to the game server binary
SERVER_BIN="/app/MultiServer.py"

# Initialize an array to hold arguments
ARGS=()

# GAME_PATH: added as a positional argument (no flag)
if [[ -n "${GAME_PATH:-}" ]]; then
    ARGS+=("$GAME_PATH")
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

# DISABLE_SAVE: maps to --disable_save
if [[ "${DISABLE_SAVE:-}" =~ ^[Tt][Rr][Uu][Ee]$ ]]; then
    ARGS+=("--disable_save")
fi

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

# LOGTIME: maps to --logtime
if [[ "${LOGTIME:-}" =~ ^[Tt][Rr][Uu][Ee]$ ]]; then
    ARGS+=("--logtime")
fi

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

# USE_EMBEDDED_OPTIONS: maps to --use_embedded_options
if [[ "${USE_EMBEDDED_OPTIONS:-}" =~ ^[Tt][Rr][Uu][Ee]$ ]]; then
    ARGS+=("--use_embedded_options")
fi

# COMPATIBILITY: maps to --compatibility <value>
if [[ -n "${COMPATIBILITY:-}" ]]; then
    ARGS+=("--compatibility" "$COMPATIBILITY")
fi

# LOG_NETWORK: maps to --log_network
if [[ "${LOG_NETWORK:-}" =~ ^[Tt][Rr][Uu][Ee]$ ]]; then
    ARGS+=("--log_network")
fi

# Optional: show the final command for debugging
echo "Starting Archipelago Server:"
echo "python $SERVER_BIN ${ARGS[*]}"

# Execute the command
exec "python" "$SERVER_BIN" "${ARGS[@]}"