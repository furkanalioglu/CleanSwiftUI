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
            VStack(alignment: .leading, spacing: 16){
                Text(title)
                    .foregroundStyle(Color.blue)
                    .font(.headline)
                    .fontWeight(.medium)
                Text(question)
                    .font(.largeTitle)
                    .fontWeight(.medium)
            }.padding()
            ForEach(options, id: \.self) { option in
                Button{
                    
                }label:{
                    HStack {
                        Circle()
                            .stroke(Color.secondary, lineWidth: 2.5)
                        .frame(width: 40,height: 40)
                    Text(option)
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundStyle(Color.secondary)
                        Spacer()
                    }.padding()
                }
                    
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

