//
//  QuestionHeader.swift
//  CleanSwiftUI
//
//  Created by Furkan Alioglu on 13.10.2023.
//

import Foundation
import SwiftUI

struct QuestionHeader: View {
    let title: String
    let question: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(title)
                .foregroundStyle(Color.blue)
                .font(.headline)
                .fontWeight(.medium)
            Text(question)
                .font(.largeTitle)
                .fontWeight(.medium)
        }.padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    QuestionHeader(title: "Question 1", question:  "What is 4 + 4")
}
