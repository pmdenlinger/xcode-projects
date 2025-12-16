//  ContentView.swift
//  WordScramble
//
//  Created by Paul Denlinger on 12/13/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    func addNewWord() {
        // Lowercase and trim the word, to make sure
        // we don't add duplicate words with case differences
        let answer =
        newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        // exit if the remaining string is empty
        guard answer.count > 0 else { return }
        // extra validation to come
        usedWords.insert(answer, at: 0)
        newWord = ""
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        Text(word)
                    }
                }
            }
            .navigationTitle("Word Scramble")
            .onSubmit(addNewWord)
        }
        
    }
}

#Preview {
    ContentView()
}
