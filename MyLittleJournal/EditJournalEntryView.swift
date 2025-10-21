//
//  EditJournalEntryView.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 21/10/25.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode = false
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
                DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                Text("\(editingJournalEntry.rating)")
                Slider(value: $editingJournalEntry.rating, in:1...5, step: 1)
                TextEditor(text: $editingJournalEntry.text)
            }
            .navigationTitle("Edit Mode")
                .toolbar {
                    Button("Done"){
                        editMode = false
                    }
                }
        } else {
            JournalEntryDetailView(detailJournalEntry: editingJournalEntry)
                .toolbar {
                    Button("Edit"){
                        editMode = true
                    }
                }
        }
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(editingJournalEntry: JournalEntry(title: "A Great Gold Day", text: "I found a nice pot of gold. I'm rich I tell ya", rating: 5, date: Date()))
    }
   
}
