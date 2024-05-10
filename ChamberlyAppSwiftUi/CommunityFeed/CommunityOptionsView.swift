//
//  CommunityOptionsView.swift
//  ChamberlyAppSwiftUi
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import SwiftUI

struct CommunityOptionsView: View {
    @Binding var showCommunityOptions: Bool

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Text("Community")
                    .font(.title2).bold()
                
                Button("View Guidelines") {
                    // Handle action
                    showCommunityOptions = false
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                
                Button("Report") {
                    // Handle action
                    showCommunityOptions = false
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                
                Button("Mute This Community") {
                    // Handle action
                    showCommunityOptions = false
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                
                Button("Block") {
                    // Handle action
                    showCommunityOptions = false
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                // ... (Similar buttons for Report, Mute, Block) ...
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)

            Button(action: {
                showCommunityOptions = false
            }) {
                Image(systemName: "xmark")
                    .padding()
            }
        }
        .padding()
    }
}
