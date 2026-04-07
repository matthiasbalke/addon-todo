# Home Assistant Add-on: ToDo

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

[![Github Actions][github-actions-shield]][github-actions]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]
![Reported Installations][installations-shield-stable]

## About

This add-on allows you to run [ToDo][official-site] on your Home Assistant instance.

[:books: Read the full add-on documentation][docs]

## Features

Configure settings within the add-on settings:

- PostgreSQL host, database, username and password
- JWT Secret to sign JWT Tokens with
- Origin / CORS Origin
- Webauthn Relaying Party ID

## Support

Got questions?

Feel free to [open an issue here][issue] on GitHub.

## Contributing

### Pre-commit hooks

This repository uses [pre-commit](https://pre-commit.com/) to enforce code quality checks before each commit. The following hooks are configured:

- **yamllint** — lints YAML files against `.yamllint`
- **prettier** — formats YAML, JSON, and Markdown files
- **check-json** — validates JSON syntax
- **shellcheck** — lints shell scripts
- **zizmor** — security audit of GitHub Actions workflows

**One-time setup:**

```sh
pip install pre-commit
pre-commit install
```

To run all hooks manually against all files:

```sh
pre-commit run --all-files
```

## Authors & contributors

The original setup of this repository is by [Matthias Balke][matthiasbalke].

For a full list of all authors and contributors, check [the contributor's page][contributors].

## MIT License

Copyright (c) 2026 Matthias Balke

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[project-stage-shield]: https://img.shields.io/badge/project%20stage-early%09testing-yellow.svg
[license-shield]: https://img.shields.io/github/license/matthiasbalke/addon-todo
[releases-shield]: https://img.shields.io/github/v/release/matthiasbalke/addon-todo?include_prereleases
[releases]: https://github.com/matthiasbalke/addon-todo/releases
[github-actions-shield]: https://github.com/matthiasbalke/addon-todo/workflows/CI/badge.svg
[github-actions]: https://github.com/matthiasbalke/addon-todo/actions
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-no-red.svg
[armv7-shield]: https://img.shields.io/badge/armv7-no-red.svg
[i386-shield]: https://img.shields.io/badge/i386-no-red.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2026.svg
[commits-shield]: https://img.shields.io/github/commit-activity/y/matthiasbalke/addon-todo.svg
[commits]: https://github.com/matthiasbalke/addon-todo/commits/main
[official-site]: https://github.com/matthiasbalke/todo
[docs]: https://github.com/matthiasbalke/addon-todo/blob/main/todo/DOCS.md
[issue]: https://github.com/matthiasbalke/addon-todo/issues
[matthiasbalke]: https://github.com/matthiasbalke
[contributors]: https://github.com/matthiasbalke/addon-todo/graphs/contributors
[installations-shield-stable]: https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fanalytics.home-assistant.io%2Faddons.json&query=%24%5B%2295229e99_todo%22%5D.total&label=Reported%20Installations&link=https%3A%2F%2Fanalytics.home-assistant.io/add-ons
