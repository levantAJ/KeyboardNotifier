//
//  Keyboard.swift
//  KeyboardNotifier
//
//  Created by levantAJ on 6/8/19.
//  Copyright © 2019 levantAJ. All rights reserved.
//

import UIKit

open class Keyboard {
    public static let current = Keyboard()
    public typealias Info = (keyboardFrame: CGRect, animationDuration: Double)
    var onKeyboardWillShow: ((Info) -> Void)?
    var onKeyboardDidShow: ((Info) -> Void)?
    var onKeyboardWillHide: ((Info) -> Void)?
    var onKeyboardDidHide: ((Info) -> Void)?

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    open func willShow(completion: @escaping (Keyboard.Info) -> Void) {
        onKeyboardWillShow = completion
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    open func didShow(completion: @escaping (Keyboard.Info) -> Void) {
        onKeyboardDidShow = completion
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
    }

    open func willHide(completion: @escaping (Keyboard.Info) -> Void) {
        onKeyboardWillHide = completion
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    open func willDidHide(completion: @escaping (Keyboard.Info) -> Void) {
        onKeyboardDidHide = completion
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
}

// MARK: - User Interations

extension Keyboard {
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let info = notification.keyboardInfo else { return }
        onKeyboardWillShow?(info)
    }

    @objc func keyboardDidShow(notification: NSNotification) {
        guard let info = notification.keyboardInfo else { return }
        onKeyboardDidShow?(info)
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        guard let info = notification.keyboardInfo else { return }
        onKeyboardWillHide?(info)
    }

    @objc func keyboardDidHide(notification: NSNotification) {
        guard let info = notification.keyboardInfo else { return }
        onKeyboardDidHide?(info)
    }
}

// MARK: - NSNotification

extension NSNotification {
    var keyboardInfo: Keyboard.Info? {
        guard let rect = keyboardFrame else { return nil }
        return (rect, keyboardAnimationDuration)
    }

    var keyboardFrame: CGRect? {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
    }

    var keyboardAnimationDuration: Double {
        return (userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue ?? 0
    }
}
