//
//  Keyhi.swift
//  Keyhi
//
//  Created by levantAJ on 6/8/19.
//  Copyright © 2019 levantAJ. All rights reserved.
//

open class Keyboard {
    public static let shared = Keyboard()
    var keyboardWillAppearHandler: ((CGRect) -> Void)?
    var keyboardDidAppearHandler: ((CGRect) -> Void)?
    var keyboardWillDisappearHandler: ((CGRect) -> Void)?
    var keyboardDidDisappearHandler: ((CGRect) -> Void)?

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    open func willAppear(handler: @escaping (CGRect) -> Void) {
        keyboardWillAppearHandler = handler
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    open func didAppear(handler: @escaping (CGRect) -> Void) {
        keyboardDidAppearHandler = handler
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidAppear), name: UIResponder.keyboardDidShowNotification, object: nil)
    }

    open func willDisappear(handler: @escaping (CGRect) -> Void) {
        keyboardWillDisappearHandler = handler
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    open func willDidDisappear(handler: @escaping (CGRect) -> Void) {
        keyboardDidDisappearHandler = handler
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidDisappear), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
}

// MARK: - User Interations

extension Keyboard {
    @objc func keyboardWillAppear(notification: NSNotification) {
        guard let rect = keyboardRect(from: notification) else { return }
        keyboardWillAppearHandler?(rect)
    }

    @objc func keyboardDidAppear(notification: NSNotification) {
        guard let rect = keyboardRect(from: notification) else { return }
        keyboardDidAppearHandler?(rect)
    }

    @objc func keyboardWillDisappear(notification: NSNotification) {
        guard let rect = keyboardRect(from: notification) else { return }
        keyboardWillDisappearHandler?(rect)
    }

    @objc func keyboardDidDisappear(notification: NSNotification) {
        guard let rect = keyboardRect(from: notification) else { return }
        keyboardDidDisappearHandler?(rect)
    }
}

// MARK: - Privates

extension Keyboard {
    private func keyboardRect(from notification: NSNotification) -> CGRect? {
        return (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
    }
}
