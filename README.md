# Bytesize to Jinja

This is a simple tool to convert Dan Klammer's [Bytesize Icons] to a
[Jinja2] macro.

For convenience, the [output] is included in this repository.
(It might be outdated, though – check the Bytesize site for updates.)

[Bytesize Icons]: https://danklammer.com/bytesize-icons/
[Jinja2]: http://jinja.pocoo.org
[output]: bytesize_icons.jinja


## Using the Icons

In your Jinja template, import the macro and use it:

```jinja
{% from "bytesize_icons.jinja" import bytesize_icon %}

{{ bytesize_icon('heart') }}
```


## Running the Script

If you want to regenerate the macro, you will need Python 3.6+.
If you have GNU make, just run that:

```console
$ make
```

Or, do the steps manually:

- Download `bytesize-symbols.svg` from https://github.com/danklammer/bytesize-icons
- Run `./bytesize-to-jinja.py < bytesize-symbols.svg`


## License

The icons are under a [MIT license].
According to the project's README:

> Bytesize Icons does not require attribution, but is encouraged.
> A link or mention anywhere in your project would be much appreciated.

The conversion script is given away under the [CC0 Public Domain Dedication].
May it serve you well.


[MIT license]: LICENSE.icons
[CC0 Public Domain Dedication]: LICENSE.CC0
