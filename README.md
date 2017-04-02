# Xcode goodies

## Content
* [Templates](#templates)
* [Snippets](#snippets)
* [Keyboard shortcuts](#keyboard-shortcuts)

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

## Snippets
Similary as templates, Xcode supports custom code snippets.
A lot of standard snippets are included in base Xcode installation, however it's not enough!
Do you remember this few lines of code you have to write whenever you want to disable Swiftlint here and then enable it somewhere else again?
Does it take you at least second try to write correct syntax of `Localizable.strings`?
Oh, and did I mention the Realm API which is not suggested by Xcode because it's implemented with static methods?
Custom snippets are here for rescue!
See the list below and choose your favorite.

### List of custom snippets

#### ReactiveSwift & ReactiveCocoa

* [RAC disposable definition](snippets/9C88A28C-DB25-421B-A846-9C4E3E867427.codesnippet)

#### Realm

* [Realm dynamic var declaration](snippets/45DCE6A4-72B7-4D46-AFF1-8645C11CB1EC.codesnippet)
* [Realm API - Ignored properties](snippets/99FB3AAE-7B4C-4484-B134-C8AF41D7D536.codesnippet)
* [Realm API - Primary key](snippets/002300FE-9FCC-4F1C-95F2-2AEF03E11219.codesnippet)

#### Swiftlint

* [Disable Swiftlint validation rule with](snippets/0B1E7716-5498-493A-99AB-86BFD0150AFD.codesnippet)
* [Enable Swiftlint validation rule](snippets/05A22B9F-CCE6-4E60-9E42-C242134B2493.codesnippet)

#### Localizable strings file

* [Create translation key-value pair](snippets/0CAD2970-EF19-4B08-A448-405FB8D956E5.codesnippet)

### Installation
The installation is alson done with symlinks, but snippets does not support subfolders.
Snippets must be linked separately:

```bash
$ cd xcode-goodies/snippets # Switch to the repository
$ ln -s "$PWD"/*.codesnippet ~/Library/Developer/Xcode/UserData/CodeSnippet
```

Note that if you have your own snippets already, there may be some name conflicts during installation.
In that case, rename the conflicted files (your or these in repository) and run the installation script again.

To see the effect, **restart the Xcode**.

## Keyboard shortcuts

#### Scheme / Target / Product
| Effect                                 | Shortcut                                                                                                       |
|----------------------------------------|----------------------------------------------------------------------------------------------------------------|
| Switch build scheme                    | <kbd>ctrl ^</kbd> + <kbd>cmd ⌘</kbd> + <kbd>[</kbd> **or** <kbd>ctrl ^</kbd> + <kbd>cmd ⌘</kbd> + <kbd>]</kbd> |
| Switch product destination (simulator) | <kbd>ctrl ^</kbd> + <kbd>alt ⎇</kbd> + <kbd>cmd ⌘</kbd> + <kbd>[</kbd> **or** <kbd>ctrl ^</kbd> + <kbd>alt ⎇</kbd> + <kbd>cmd ⌘</kbd> + <kbd>]</kbd> |

#### Editor focus
| Effect                         | Shortcut                                                                                                         |
|--------------------------------|------------------------------------------------------------------------------------------------------------------|
| Move focus to different editor | <kbd>cmd ⌘</kbd> + <kbd>j</kbd>                                                                                  |
| Open assistant editor *        | <kbd>cmd ⌘</kbd> + <kbd>alt ⎇</kbd> + <kbd>enter ↩</kbd>                                                         |
| Close assistant editor         | <kbd>cmd ⌘</kbd> + <kbd>enter ↩</kbd>                                                                             |
| Switch tab                     | <kbd>cmd ⌘</kbd> + <kbd>shift ⬆</kbd> + <kbd>[</kbd> **or** <kbd>cmd ⌘</kbd> + <kbd>shift ⬆</kbd> + <kbd>]</kbd> |
| Open new tab                   | <kbd>cmd ⌘</kbd> + <kbd>t</kbd>                                                                                   |

\* Don't forget to check *Use Focused Editor* in Xcode *Navigation* preferences, or each new file will be opened in the standard editor every time.

#### Source code editing
| Effect              | Shortcut                                                     |
|---------------------|--------------------------------------------------------------|
| Open quickly        | <kbd>cmd ⌘</kbd> + <kbd>shift ⬆</kbd> + <kbd>o</kbd>        |
| Show completions    | <kbd>ctrl ^</kbd> + <kbd>space</kbd> **or** <kbd>esc</kbd>\* |
| Re-indent selection | <kbd>ctrl ^</kbd> + <kbd>i</kbd>                             |

\* Must be turned on explicitly in *Text Editing* under *Code completions* options.

#### Editor navigation
| Effect                            | Shortcut                         |
|-----------------------------------|----------------------------------|
| Move to the beginning of the line | <kbd>cmd ⌘</kbd> + <kbd>←</kbd> |
| Move to the end of the line       | <kbd>cmd ⌘</kbd> + <kbd>➡</kbd>  |
| Move to the beginning of the word | <kbd>alt ⎇</kbd> + <kbd>←</kbd> |
| Move to the end of the word       | <kbd>alt ⎇</kbd> + <kbd>➡</kbd> |
| File outline                      | <kbd>ctrl ^</kbd> + <kbd>6</kbd> |

Line navigation may be also combined with <kbd>backspace ⬅</kbd> to achieve ultimate deletion combos.

#### Editor commands
| Effect                | Shortcut                                                                 |
|-----------------------|--------------------------------------------------------------------------|
| Build target          | <kbd>cmd ⌘</kbd> + <kbd>b</kbd>                                          |
| Run product           | <kbd>cmd ⌘</kbd> + <kbd>r</kbd>                                          |
| Run all tests         | <kbd>cmd ⌘</kbd> + <kbd>r</kbd>                                          |
| Run current test      | <kbd>cmd ⌘</kbd> + <kbd>ctrl ^</kbd> + <kbd>alt ⎇</kbd> + <kbd>u</kbd>   |
| Clean project         | <kbd>cmd ⌘</kbd> + <kbd>shift ⬆</kbd> + <kbd>k</kbd>                     |
| Clean build folder    | <kbd>cmd ⌘</kbd> + <kbd>alt ⎇</kbd> + <kbd>shift ⬆</kbd> + <kbd>k</kbd> |

#### Editor layout
| Effect                | Shortcut                                         |
|-------------------|------------------------------------------------------|
| Toggle console   | <kbd>cmd ⌘</kbd> + <kbd>shift ⬆</kbd> + <kbd>y</kbd> |
| Toggle navigator | <kbd>cmd ⌘</kbd> + <kbd>0</kbd>                       |
| Toggle utilities | <kbd>cmd ⌘</kbd> + <kbd>alt ⎇</kbd> + <kbd>0</kbd>   |
