//
//  ProfileViewModel.swift
//  Threads
//
//  Created by admin on 21/09/23.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("DEBUG: User in View Model from combine is \(String(describing: user))")
        }.store(in: &cancellables)
    }
}
