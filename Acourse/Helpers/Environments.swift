//
//  Environments.swift
//  Acourse
//
//  Created by JonathanTriC on 28/03/23.
//

import Foundation

public enum InfoPlistKey {
    case variants
    
    
    func value() -> String {
        switch self {
        case .variants:
            return "variants"
        }
    }
}

public struct Env {
    var dict: [String:Any] {
        get {
            guard let dict = Bundle.main.infoDictionary else {
                fatalError("Something went wrong, plist does not exist")
            }
            
            return dict
        }
    }
    
    public func configure(_ key: InfoPlistKey) -> String {
        switch key {
        case .variants:
            return dict[InfoPlistKey.variants.value()] as! String
        }
    }
}
