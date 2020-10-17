# ⌨️ KeyboardNotifier
*KeyboardNotifier* manages Keyboard's visibility

## Install

Using CocoaPods:

```ruby
pod 'KeyboardNotifier'
```

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
