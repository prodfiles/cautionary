# shellcheck shell=bash

if ! typeset -f -F cautionary_danger_zone &>/dev/null; then
  function cautionary_danger_zone() {
    return 1
  }
fi

if ! typeset -f -F cautionary_risk_zone &>/dev/null; then
  function cautionary_risk_zone() {
    [[ "${SSH_CONNECTION:-}" ]]
  }
fi
