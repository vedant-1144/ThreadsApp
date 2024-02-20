//
//  User.swift
//  Threads
//
//  Created by admin on 19/09/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fulllname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
