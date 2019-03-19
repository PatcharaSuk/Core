//
//  UIViewControllerExtension.swift
//  Core
//
//  Created by patchara_suk on 19/3/2562 BE.
//  Copyright © 2562 mdc. All rights reserved.
//

import UIKit

public extension UIViewController{
    
    public func hideKeyboardWhenTappedAround() {
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard)))
        
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
    
    public func hideKeyboardWhenTappedAroundTableView() {
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            // Do your thang here!
            self.view.endEditing(true)
            for textField in self.view.subviews where textField is UITextField {
                textField.resignFirstResponder()
            }
        }
        sender.cancelsTouchesInView = false
    }
}
