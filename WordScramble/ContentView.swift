//
//  ContentView.swift
//  WordScramble
//
//  Created by KazukiNakano on 2020/06/06.
//  Copyright © 2020 kazu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        let allGood = misspelledRange.location == NSNotFound

        return Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
