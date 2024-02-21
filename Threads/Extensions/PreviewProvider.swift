//
//  PreviewProvider.swift
//  Threads
//
//  Created by admin on 20/02/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev : DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fulllname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
}
