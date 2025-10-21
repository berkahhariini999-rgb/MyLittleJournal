//
//  JournalEntriesListView.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 20/10/25.
//



import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var journalEntries:[JournalEntry]
    
    @State var showCreateView = false
    
//    var dogs = ["Fido", "Sara", "Billy"]
//    let favNumbers = [2,6,3,88,352,64326]
   
    
//    [JournalEntry(title: "A Great Gold Day"),
//        JournalEntry(title: "Nice Day"),
//        JournalEntry(title: "Made an App"),
//        JournalEntry(title: "Cool Day")
     
     
    var body: some View {
        NavigationStack {
        List(journalEntries){
            listedJournalEntry in
            NavigationLink(destination:EditJournalEntryView(editingJournalEntry:  listedJournalEntry)){
                JournalEntryRowView(rowJournalEntry: listedJournalEntry)
//                Text(listedJournalEntry.title)
//                    .bold()
            }
            
        }
        .navigationTitle("\(journalEntries.count) Journal Entries")
        .toolbar {
            
            Button(action: {
//                let newJournalEntry = JournalEntry(title: "Fun Day", text: "I am learning SwiftData", rating: 5, date:Date() )
//                modelContext.insert(newJournalEntry)
                showCreateView = true
                
            }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
        .sheet(isPresented: $showCreateView){
            CreateJournalEntryView()
         }
        }
//        List(dogs, id:\.self){
//            listedDog in
//            Text(listedDog)
//        }
//        List(favNumbers, id: \.self){
//            listedNumber in
//            Text("\(listedNumber)")
//           
//        }
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for:JournalEntry.self, inMemory: true)
}
