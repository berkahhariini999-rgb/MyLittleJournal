//
//  JournalEntry.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 20/10/25.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String,text:String, rating:Double,date:Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
    
//    init(title: String) {
//        self.title = title
//    }
}

//let journalEntries: [JournalEntry] = [JournalEntry(title: "A Great Gold Day", text: "I found a nice pot of gold. I'm rich I tell ya", rating: 5, date: Date()),
//                                      JournalEntry(title: "Headache", text: "sick hehehe", rating: 2, date: Date.now.addingTimeInterval(-3 * 24 * 60 * 60)),
//                                      JournalEntry(title: "Cool Day", text: "it's cool", rating: 4, date: Date.now.addingTimeInterval(-7 * 24 * 60 * 60))]



