//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by admin on 16/09/23.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads = 0
    case replies = 1
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
