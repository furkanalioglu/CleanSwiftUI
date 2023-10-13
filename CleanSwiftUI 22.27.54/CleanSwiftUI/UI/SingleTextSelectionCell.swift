//
//  SingleTextSelectionCell.swift
//  CleanSwiftUI
//
//  Created by Furkan Alioglu on 13.10.2023.
//

import Foundation
import SwiftUI

struct SingleTextSelectionCell: View {
    let text: String
    let selection : () -> Void
    var body: some View {
        Button{
            
        }label:{
            HStack {
                Circle()
                    .stroke(Color.secondary, lineWidth: 2.5)
                    .frame(width: 40,height: 40)
                Text(text)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.secondary)
                Spacer()
            }.padding()
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    SingleTextSelectionCell(text: "4 + 4 is 15", selection: {})
}

