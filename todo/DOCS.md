# Home Assistant Add-on: ToDo

This add-on allows you to run [ToDo][official-site] on your Home Assistant
instance.

## Features

Configure settings within the add-on settings:

- PostgreSQL host, database, username and password
- JWT Secret to sign JWT Tokens with
- Origin / CORS Origin
- Webauthn Relaying Party ID

## Setup Add-on repository

### automatic setup

1. Click on the Home Assistant `My button` below:

   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.][my-ha-badge]][my-ha-url]

1. Click `Add`.
1. Click on the three dots menu in the top right.
1. Click on `Check for updates`.
1. Refresh the page.

### manual setup

1. In the Home Assistant add-on store, a possibility to add a repository is
   provided.
1. Use the following URL to add this repository:

```txt
https://github.com/matthiasbalke/ha-addons
```

1. Click on the three dots menu in the top right
1. Click on `Check for updates`
1. Refresh the page.

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Add the Add-on repository to your Home Assistant, like described above.
1. In your profile activate the `advanced mode`, to be able to install
   `experimental` add-ons, otherwise the add-on will not be shown in the add-on
   store.
1. Click the Home Assistant `My button` below to open the add-on on your Home
   Assistant instance.

   [![Open this add-on in your Home Assistant instance.][addon-badge]][addon]

1. Click the "Install" button to install the add-on.
1. Configure all required options.
1. Start the `ToDo` add-on.
1. Check the logs of the `ToDo` add-on to see if everything went well.

## Support

Got questions?

Feel free to [open an issue here][issue] on GitHub.

## Authors & contributors

The original setup of this repository is by [Matthias Balke][matthiasbalke].

For a full list of all authors and contributors, check [the contributor's
page][contributors].

# MIT License

Copyright (c) 2026 Matthias Balke

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[official-site]: https://github.com/matthiasbalke/todo
[my-ha-badge]:
  https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg
[my-ha-url]:
  https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fmatthiasbalke%2Fha-addons
[addon-badge]: https://my.home-assistant.io/badges/supervisor_addon.svg
[addon]:
  https://my.home-assistant.io/redirect/supervisor_addon/?addon=d8ac6820_todo&repository_url=https%3A%2F%2Fgithub.com%2Fmatthiasbalke%2Fha-addons
[issue]: https://github.com/matthiasbalke/addon-todo/issues
[matthiasbalke]: https://github.com/matthiasbalke
[contributors]: https://github.com/matthiasbalke/addon-todo/graphs/contributors
