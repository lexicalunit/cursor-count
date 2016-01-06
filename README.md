# Cursor Indicator

[![apm package][apm-ver-link]][releases]
[![][travis-ci-badge]][travis-ci]
[![][david-badge]][david]
[![][dl-badge]][apm-pkg-link]
[![][mit-badge]][mit]

Indicates the current number of cursors in the active editor via the Atom status bar.

![cursors](https://cloud.githubusercontent.com/assets/1903876/8216758/212eae80-14fe-11e5-80a6-443a6daf9d95.png)

## Styling

Add and modify to your liking the following code to your personal Atom Stylesheet.

```less
.cursor-indicator {
  color: orangered;
  text-shadow: 0 0 5px orangered;
}
```

You can open your Stylesheet using the Command Palette.

```
Command Palette ➔ Application: Open Your Stylesheet
```

## Future Work

- Why do spec tests fail on Windows only?
- Improved documentation.

---

[MIT][mit] © [lexicalunit][author] et [al][contributors]

[mit]:              http://opensource.org/licenses/MIT
[author]:           http://github.com/lexicalunit
[contributors]:     https://github.com/lexicalunit/cursor-indicator/graphs/contributors
[releases]:         https://github.com/lexicalunit/cursor-indicator/releases
[mit-badge]:        https://img.shields.io/apm/l/cursor-indicator.svg
[apm-pkg-link]:     https://atom.io/packages/cursor-indicator
[apm-ver-link]:     https://img.shields.io/apm/v/cursor-indicator.svg
[dl-badge]:         http://img.shields.io/apm/dm/cursor-indicator.svg
[travis-ci-badge]:  https://travis-ci.org/lexicalunit/cursor-indicator.svg?branch=master
[travis-ci]:        https://travis-ci.org/lexicalunit/cursor-indicator
[david-badge]:      https://david-dm.org/lexicalunit/cursor-indicator.svg
[david]:            https://david-dm.org/lexicalunit/cursor-indicator
