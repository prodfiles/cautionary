# cautionary

Cautionary themes and utilities

## Colors

You can override theme colors by setting one or more color variables. There are seven base colors with a foreground (`_FG`) and a background (`_BG`) value:

- default
- muted
- primary
- secondary
- success
- risk
- danger

```bash
CAUTIONARY_COLOR_DEFAULT_BG
CAUTIONARY_COLOR_DEFAULT_FG
CAUTIONARY_COLOR_MUTED_BG
CAUTIONARY_COLOR_MUTED_FG
CAUTIONARY_COLOR_PRIMARY_BG
CAUTIONARY_COLOR_PRIMARY_FG
CAUTIONARY_COLOR_SECONDARY_BG
CAUTIONARY_COLOR_SECONDARY_FG
CAUTIONARY_COLOR_SUCCESS_BG
CAUTIONARY_COLOR_SUCCESS_FG
CAUTIONARY_COLOR_RISK_BG
CAUTIONARY_COLOR_RISK_FG
CAUTIONARY_COLOR_DANGER_BG
CAUTIONARY_COLOR_DANGER_FG
```

## Themes

Themes can be defined using a `.sh` or `.env` file in the `themes` directory setting all color variables. A theme can then be selected with the `CAUTIONARY_THEME` variable which defaults to `github_dark`.
