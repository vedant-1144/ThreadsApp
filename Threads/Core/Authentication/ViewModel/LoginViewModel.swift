//
//  LoginViewModel.swift
//  Threads
//
//  Created by admin on 18/09/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    @MainActor
    func Login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
