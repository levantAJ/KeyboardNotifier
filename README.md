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
Keyhi.shared.willAppear { keyboardFrame in
  print(keyboardFrame)
}
``` 

- To check keyboard did appear:
```
Keyhi.shared.didAppear { keyboardFrame in
  print(keyboardFrame)
}
``` 

- To check keyboard will disappear:
```
Keyhi.shared.willDisappear { keyboardFrame in
  print(keyboardFrame)
}
``` 

- To check keyboard did disappear:
```
Keyhi.shared.didDisappear { keyboardFrame in
  print(keyboardFrame)
}
``` 
