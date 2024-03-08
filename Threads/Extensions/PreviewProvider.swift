//
//  PreviewProvider.swift
//  Threads
//
//  Created by admin on 20/02/24.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev : DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fulllname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
    
    let thread = Thread(ownerUid: "123", caption: "This is a Test Thread", timestamp: Timestamp(), likes: 0)
}
