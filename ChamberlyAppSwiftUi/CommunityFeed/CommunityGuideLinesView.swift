//
//  CommunityGuideLinesView.swift
//  ChamberlyAppSwiftUi
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import SwiftUI

struct CommunityGuidelinesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Community Guidelines")
                .font(.title2).bold()

            VStack(alignment: .leading) {
                Text("1. Respect others: Be kind, empathetic, and respectful.")
                Text("2. Maintain confidentiality and privacy.")
                Text("3. Communicate constructively, avoiding hostility or discrimination.")
                Text("4. Offer support and validation to fellow members.")
                Text("5. Keep discussions relevant.")
                Text("6. Create a non-judgmental atmosphere.")
                Text("7. Report any violations or discomfort to team@chamberly.net.")
            }
            .padding(.vertical)

            Text("Together, let's create a supportive community for growth and understanding.")
                .font(.headline)
        }
        .padding()
    }
}

struct CommunityGuidelinesView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityGuidelinesView()
    }
}
