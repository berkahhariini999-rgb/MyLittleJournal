//
//  JournalEntryRowView.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 21/10/25.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let rowJournalEntry: JournalEntry
    var body: some View {
        VStack(alignment: .leading) {
        HStack {
            Text(rowJournalEntry.title)
                .bold()
            Text("-")
            Text(rowJournalEntry.text)
                .lineLimit(1)
                .foregroundStyle(.secondary)
        }
        .padding(.bottom, 1)
        HStack {
            Text(rowJournalEntry.date, style: .date)
                .foregroundStyle(.secondary)
            Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
          }
        .font(.caption)
        }
      
    }
}

#Preview {
    List {
        JournalEntryRowView(rowJournalEntry: JournalEntry(title: "A Great Gold Day", text: "I found a nice pot of gold. I'm rich I tell ya", rating: 5, date: Date()))
    }
    
}
