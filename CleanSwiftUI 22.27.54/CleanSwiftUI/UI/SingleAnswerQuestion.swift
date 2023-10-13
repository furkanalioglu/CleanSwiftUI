//
//  ContentView.swift
//  CleanSwiftUI
//
//  Created by Furkan Alioglu on 13.10.2023.
//

import SwiftUI

struct SingleAnswerQuestion: View {
    let title: String
    let question: String
    let options: [String]
    let selection : (String) -> Void
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            QuestionHeader(title: title, question: question)
            ForEach(options, id: \.self) { option in
                SingleTextSelectionCell(text: option, selection: {})
                    
            }
        }
        Spacer()
    }
}

#Preview {
        SingleAnswerQuestion(title: "QUESTION 1",
                             question: "What is 4 + 4",
                             options: ["4 + 4 is 15",
                                       "4 + 4 is 16",
                                       "4 + 4 is 19",
                                       "4 + 4 is 20"],
                             selection : {_ in})
}
