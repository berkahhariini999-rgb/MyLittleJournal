//
//  CreateJournalEntryView.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 21/10/25.
//

import SwiftUI
import SwiftData

struct CreateJournalEntryView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @State var title: String = ""
    @State var text: String = "Today was..."
    @State var date: Date = Date()
    @State var rating: Double = 3.0
    var body: some View {
        NavigationStack {
        Form {
            TextField("Title", text: $title)
            DatePicker("Date", selection: $date, displayedComponents: .date)
            Text(String(repeating: "⭐️", count: Int(rating)))
            Text("\(rating)")
            Slider(value: $rating, in:1...5, step: 1)
            TextEditor(text: $text)
        }
        .navigationTitle("New Journal Entry")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel"){
                   dismiss()
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
            Button("Save"){
                let newJournalEntry = JournalEntry(title: title, text: text, rating: rating, date: date)
                modelContext.insert(newJournalEntry)
              dismiss()
                
              }
            }
          }
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
