# Bytesize to Jinja

This is a simple tool to convert Dan Klammer's [Bytesize Icons] to a
[Jinja2] macro.

Bytesize Icons are tiny SVG-based icons intended to be embedded directly in
HTML pages, and styled with CSS.

Jinja2 is a popular templating engine for Python.

For convenience, the [resulting macro] is included in this repository.
(It might be outdated, though – check the Bytesize site for updates.)

[Bytesize Icons]: https://danklammer.com/bytesize-icons/
[Jinja2]: http://jinja.pocoo.org
[resulting macro]: bytesize_icons.jinja


## Using the Icons

In your Jinja template, grab the [file with the macro], then import and use it:

```jinja
{% from "bytesize_icons.jinja" import bytesize_icon %}

{{ bytesize_icon('heart') }}
```

[file with the macro]: bytesize_icons.jinja


## Running the Script

If you want to regenerate the macro, you will need Python 3.6+.
If you have GNU make, just run that:

```console
$ make
```

Or, do the steps manually:

- Download `bytesize-symbols.svg` from https://github.com/danklammer/bytesize-icons
- Run `./bytesize-to-jinja.py < bytesize-symbols.svg`

If you did this because the included macro is outdated, consider sending
a pull request for [bytesize-to-jinja]. Thanks!

[bytesize-to-jinja]: https://github.com/encukou/bytesize-to-jinja


## License

The icons are under a [MIT license].
According to the project's README:

> Bytesize Icons does not require attribution, but is encouraged.
> A link or mention anywhere in your project would be much appreciated.

The conversion script is given away under the [CC0 Public Domain Dedication].
May it serve you well.


[MIT license]: LICENSE.icons
[CC0 Public Domain Dedication]: LICENSE.CC0
