# ⌨️ KeyboardNotifier
* KeyboardNotifier* manages Keyboard `will`/`did` `show`/`hide`

## Install

Using CocoaPods:
```
pod 'KeyboardNotifier'
```

## How to use:

`import KeyboardNotifier`

- To check keyboard will show:

```
Keyboard.current.willShow { info in
	print(info.keyboardFrame, info.animationDuration)
}
``` 

- To check keyboard did show:

```
Keyboard.current.didShow { info in
	print(info.keyboardFrame, info.animationDuration)
}
``` 

- To check keyboard will hide:

```
Keyboard.current.willHide { info in
	print(info.keyboardFrame, info.animationDuration)
}
``` 

- To check keyboard did hide:

```
Keyboard.current.didHide { info in
	print(info.keyboardFrame, info.animationDuration)
}
``` 
