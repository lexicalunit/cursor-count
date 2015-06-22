# Cursor Indicator

[![Build Status](https://travis-ci.org/lexicalunit/cursor-indicator.svg?branch=master)](https://travis-ci.org/lexicalunit/cursor-indicator) [![Build status](https://ci.appveyor.com/api/projects/status/w2itq0v9ytqjw71s/branch/master?svg=true)](https://ci.appveyor.com/project/lexicalunit/cursor-indicator/branch/master)

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
- Options for formatting of indicator text.
- More spec test coverage.
- Toggle on/off commands for indicator?
