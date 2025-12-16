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
    
    func startGame() {
            // 1. Find the URL for start.txt in our app bundle
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
                // 2. Load start.txt into a string
            if let startWords = try? String(contentsOf: startWordsURL)
            {
                // 3. Split the string up into an array of strings,
                //   separating on line breaks
            let allWords = startWords.components(separatedBy: "\n")
            
                // 4. Pick a random word, or use "silkworm" as a sensible default
            rootWord = allWords.randomElement() ?? "silkworm"
                // 5. Clear out any previous words
            return
            }
        }
            // If we are here then there was a problem – trigger a crash and report the error
        fatalError("Could not load start.txt from bundle.")
    }
    
    func addNewWord() {
        // Lowercase and trim the word, to make sure
        // we don't add duplicate words with case differences
        let answer =
        newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        // exit if the remaining string is empty
        guard answer.count > 0 else { return }
        // extra validation to come
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
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
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                        }
                    }
                }
            }
            .navigationTitle("Word Scramble")
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
        }
        
    }

#Preview {
    ContentView()
}
