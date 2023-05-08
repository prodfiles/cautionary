# shellcheck shell=bash disable=SC1090

: "${CAUTIONARY_THEME:="github_dark"}"


if [[ -f "${0:A:h:h}/themes/${CAUTIONARY_THEME}.env" ]]; then
  source "${0:A:h:h}/themes/${CAUTIONARY_THEME}.env"
fi

if [[ -f "${0:A:h:h}/themes/${CAUTIONARY_THEME}.sh" ]]; then
  source "${0:A:h:h}/themes/${CAUTIONARY_THEME}.sh"
fi
