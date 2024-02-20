//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by admin on 16/09/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("profile1")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
