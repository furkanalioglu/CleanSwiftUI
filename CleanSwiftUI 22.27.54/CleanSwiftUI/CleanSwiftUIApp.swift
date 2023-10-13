//
//  CleanSwiftUIApp.swift
//  CleanSwiftUI
//
//  Created by Furkan Alioglu on 13.10.2023.
//

import SwiftUI

@main
struct CleanSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SingleAnswerQuestion(title: "QUESTION 1",
                                 question: "What is 4 + 4",
                                 options: ["4 + 4 is 15",
                                           "4 + 4 is 16",
                                           "4 + 4 is 19",
                                           "4 + 4 is 20"],
                                 selection : {_ in})
        }
    }
}
