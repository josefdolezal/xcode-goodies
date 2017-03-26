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
* [View Controller](View%20Controller.xctemplate/__FILEBASENAME__.swift)
* [View Model](View%20Model.xctemplate/__FILEBASENAME__.swift)
* [Realm Object](Realm%20Object.xctemplate/__FILEBASENAME__.swift)
* [Quick Spec](Quick%20Spec.xctemplate/__FILEBASENAME__.swift)

### Installation
Templates are located in user's Library folder where Xcode keeps custom configuration.
To install templates, just copy them to correct location.
Best way to stay up-to date with latest repo version, it's better to create symbolic link.

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
