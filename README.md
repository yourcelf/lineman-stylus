# lineman-stylus

This is a plugin to make it easy to use Stylus in conjunction with a
[Lineman](http://linemanjs.com) app.

## Usage

First, add the plugin to your lineman project:

```
$ npm install lineman-stylus --save-dev
```
From there, you can override the default file globs by editing your
`config/files.js`:

```
module.exports = function(lineman){
  stylus: {
    generatedVendor: 'generated/css/vendor.styl.css',
    generatedApp: 'generated/css/app.styl.css',
    vendor: 'vendor/css/**/*.styl',
    app: 'app/css/**/*.styl'
  }
};
```
Now when you run `lineman run`, you should have app.styl.css and
vendor.styl.css in your `generated/css` folder.
