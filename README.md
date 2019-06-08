# ⌨️ Keyhi
*Keyhi* manages Keyboard `will`/`did` `show`/`hide`

## Install

Using CocoaPods:
```
pod 'Keyhi'
```

## How to use:

`import Keyhi`

- To check keyboard will appear:
```
Keyboard.current.willAppear { keyboardFrame in
  print(keyboardFrame)
}
``` 

- To check keyboard did appear:
```
Keyboard.current.didAppear { keyboardFrame in
  print(keyboardFrame)
}
``` 

- To check keyboard will disappear:
```
Keyboard.current.willDisappear { keyboardFrame in
  print(keyboardFrame)
}
``` 

- To check keyboard did disappear:
```
Keyboard.current.didDisappear { keyboardFrame in
  print(keyboardFrame)
}
``` 
