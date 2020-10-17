[![Pod Version](https://cocoapod-badges.herokuapp.com/v/KeyboardNotifier/badge.png)](http://cocoadocs.org/docsets/KeyboardNotifier/)
[![Pod Platform](https://cocoapod-badges.herokuapp.com/p/KeyboardNotifier/badge.png)](http://cocoadocs.org/docsets/KeyboardNotifier/)
[![Pod License](https://cocoapod-badges.herokuapp.com/l/KeyboardNotifier/badge.png)](https://www.apache.org/licenses/LICENSE-2.0.html)

# ⌨️ KeyboardNotifier
*KeyboardNotifier* manages Keyboard's visibility

## Requirements

- iOS 9.0 or later
- Xcode 11.0 or later

## Install

### Installation with CocoaPods

```ruby
pod 'KeyboardNotifier', '1.3'
```

### Build Project

At this point your workspace should build without error. If you are having problem, post to the Issue and the
community can help you solve it.

## How to use:

```swift
import KeyboardNotifier
```

- To check keyboard will show:

```swift
Keyboard.current.willShow { info in
    print(info.keyboardFrame, info.animationDuration)
}
``` 

- To check keyboard did show:

```swift
Keyboard.current.didShow { info in
    print(info.keyboardFrame, info.animationDuration)
}
``` 

- To check keyboard will hide:

```swift
Keyboard.current.willHide { info in
    print(info.keyboardFrame, info.animationDuration)
}
``` 

- To check keyboard did hide:

```swift
Keyboard.current.didHide { info in
    print(info.keyboardFrame, info.animationDuration)
}
``` 

## Troubleshooting

If you run into an issue that `KeyboardNotifier` unable to found.

```ruby
[!] Unable to find a specification for `KeyboardNotifier`

You have either:
 * mistyped the name or version.
 * not added the source repo that hosts the Podspec to your Podfile.
```

Pls refer to here [https://stackoverflow.com/questions/25913733/unable-to-find-a-specification-in-cocoapods](https://stackoverflow.com/questions/25913733/unable-to-find-a-specification-in-cocoapods)

by adding `source 'https://github.com/CocoaPods/Specs.git'`

## Author
- [Tai Le](https://github.com/levantAJ)

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.


## Licenses

All source code is licensed under the [MIT License](https://raw.githubusercontent.com/levantAJ/KeyboardNotifier/master/LICENSE).

