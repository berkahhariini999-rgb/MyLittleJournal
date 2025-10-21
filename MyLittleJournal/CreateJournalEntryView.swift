//
//  CreateJournalEntryView.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 21/10/25.
//

import SwiftUI
import SwiftData

struct CreateJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var text: String = ""
    @State var rating: Double = 1
    @State var date: Date = Date()
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Title", text: $title)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5,step: 1)
                TextEditor(text: $text)
            }
            .navigationTitle("New Journal Entry")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Save"){
                        let newjournalEntry = JournalEntry(title:title, text:text, rating: rating, date: date)
                        modelContext.insert(newjournalEntry)
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
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

