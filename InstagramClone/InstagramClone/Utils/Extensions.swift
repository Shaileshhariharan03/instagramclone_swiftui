//
//  Extensions.swift
//  InstagramClone
//
//  Created by Shailesh H on 09/08/23.
//

import UIKit

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
