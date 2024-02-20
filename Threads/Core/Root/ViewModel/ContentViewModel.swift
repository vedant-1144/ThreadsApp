//
//  ContentViewModel.swift
//  Threads
//
//  Created by admin on 18/09/23.
//

import FirebaseAuth
import Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers() 
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        } .store(in: &cancellables)
    }
}
