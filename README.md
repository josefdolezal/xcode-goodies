# Xcode goodies

## Content
* [Templates](#templates)

## Templates
By default, Xcode supports only Apple MVC templates.
This leads to terrible inconsistency in app layers when you use different architecture.
Also, a lot of boilerplate code must be deleted, some must be added.
Because of that, I decided to create MVVM friendly templates.
The MVVM style is heavily inspired by [Kickstarter's iOS App](https://github.com/kickstarter/ios-oss).
That means, all View Models are composed from `inputs` and `outputs` and implements `Type` protocol. All Controllers created with MVVM template requires ViewModel class.

All templates are separated in to sections with `MARK: - ` comments.
This creates fine document outline when you press <kbd>ctrl ^</kbd> + <kbd>6</kbd>.

Currently, this repository contains templates for:
* [View Controller](templates/View%20Controller.xctemplate/___FILEBASENAME___.swift)
* [View Model](templates/View%20Model.xctemplate/___FILEBASENAME___.swift)
* [Realm Object](templates/Realm%20Object.xctemplate/___FILEBASENAME___.swift)
* [Quick Spec](templates/Quick%20Spec.xctemplate/___FILEBASENAME___.swift)
* [Cell View](templates/Cell%20View.xctemplate/___FILEBASENAME___.swift)

### Installation
Templates are located in user's Library folder where Xcode keeps custom configuration.
To install templates, just copy them to correct location.
However, better way to stay up-to date with latest repo version is to create symbolic link for whole templates folder.

First of all, clone this repository:
```bash
$ git clone https://github.com/josefdolezal/xcode-goodies
```

Once the repository is clonned, create the symbolic link:
```bash
$ TEMPLATES_GROUP="<My templates>"
$ cd xcode-goodies # Switch to the repository
$ ln -s "$PWD" ~/Library/Developer/Xcode/Templates/"$TEMPLATES_GROUP"
```

Be sure you replaced `<My templates>` placeholder with group name you want to see in Xcode.
If everything went right, you should see new section at the bottom of the list when you press <kbd>cmd ⌘</kbd> + <kbd>n</kbd>.
