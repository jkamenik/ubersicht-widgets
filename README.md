# Ubersicht Widgets

This is my gallery of Ubersicht Widgets for my desktop setup.

There is a gallery of useful widgets [here](http://tracesof.net/uebersicht-widgets/).  Generally, I take standard widgets and download them and modify them to fit my style.  This means I move them on the desktop, change the colors, change fonts, and try to unify everything.

Disclaimer: These widgets are arbitrary code!  I scrub them for malicious behaviors, but there is no guarantee that they are without vulnerabilities.

## Install

1.  `cd ~`
1.  `git clone git@github.com:jkamenik/ubersicht-widgets.git`
1.  Download and install [Ubersicht](http://tracesof.net/uebersicht/)
1.  Open Ubersicht
1.  Click Ubersicht -> Preferences
1.  Choose "CMD" as the Interaction Shortcut
1.  Click "Widgets Folder"
1.  Change to "~/ubersicht-widgets"
1.  Restart Ubersicht

## Disabled Widgets

The following are a list of widgets that I keep because they are useful, but I generally have them disabled.  There is no way in the widget itself to set its default state to empty, so you will need to do this manually.

1.  BackgroundGrid.widget

## Disable Desktop Icon

Ubersicht and Desktop icons can coexist, but it can get confusing.  The following can be used to hide desktop icons.

```bash
defaults write com.apple.finder CreateDesktop false
sudo killall Finder
```