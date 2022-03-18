<p align=center><img alt="plugin logo" src="https://raw.githubusercontent.com/EndlessSkyPlugins/Endless-Gauntlet/master/icon%402x.png" /></p>

<h1><p align=center>Endless Sky Plugin:<br />Endless Gauntlet</p></h1>

A plugin for the free and open-source 2D space trading and combat game [Endless
Sky](https://endless-sky.github.io/).

This plugin generates an arcade-style gauntlet wherein you take a mission, jump
through a wormhole, and face a series of randomly generated fleets.

An initial gauntlet is generated for the player.  You can regenerate the
gauntlet

# Generate another gauntlet

Intended for end-game players who are comfortable running a python script, and
toggling some options related to how the gauntlet gets built.

Requires Docker (Mac or Linux).  On Windows, [install Python 3][python].

Instructions for Mac and Linux

- Open `params.txt` tweak the difficulty of the gauntlet to your liking.
- Execute the `./generate-plugin-data.sh` shell script.

Instructions for Windows

- Open `params.txt` tweak the difficulty of the gauntlet to your liking.  Set
  the path of your Endless Sky data folder.
- Run `generate.py`

## Install

Unzip to your plugins folder found here:

* Linux: ~/.local/share/endless-sky/
* Windows: %AppData%\endless-sky\
* Mac OS X: ~/Library/ApplicationSupport/endless-sky/

## Timeline

- Update Mar 17, 2022: Development semi-continued by ES community members.
- Update 10/20/2018: Development on this project has been suspended indefinitely.

[python]: https://www.python.org/downloads/
