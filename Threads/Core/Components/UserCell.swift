//
//  UserCell.swift
//  Threads
//
//  Created by admin on 16/09/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("lewis_hamilton")
                    .fontWeight(.semibold)
                
                Text("Lewis Hamilton")
                    
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
            
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
