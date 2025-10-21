//
//  JournalEntryDetailView.swift
//  MyLittleJournal
//
//  Created by Iqbal Alhadad on 21/10/25.
//

import SwiftUI

struct JournalEntryDetailView: View {
    let detailJournalEntry: JournalEntry
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
            HStack {
                Text(detailJournalEntry.date, style: .date)
                    .bold()
                Text("-")
                Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                Spacer()
            }
            .padding(.bottom)
            Text(detailJournalEntry.text)
                .bold()
          }
        .padding()
        }
        .navigationTitle(detailJournalEntry.title)
       
    }
}

#Preview {
    NavigationStack {
    JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "A Great Gold Day", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum egestas ligula auctor lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent nunc leo, vestibulum ac lacus ac, fringilla pellentesque mi. Donec suscipit enim sapien, eget finibus lectus rhoncus ac. Aenean sed turpis consectetur, aliquam tortor vitae, cursus enim. Etiam ultricies, metus et convallis mollis, lorem diam bibendum lorem, non tempor mauris purus ut urna. Curabitur porttitor vitae mauris sed scelerisque. Phasellus at magna mauris. Vestibulum luctus lectus sed lacus hendrerit, non viverra lectus pharetra. Maecenas nec lorem a lectus feugiat sollicitudin eu ut lectus.Morbi bibendum sapien nunc, non blandit sem viverra eget. Maecenas ultrices velit a fringilla porta. Nunc tempor tincidunt ex, nec facilisis risus efficitur in. Phasellus venenatis lacus nisi, ac malesuada erat porta vitae. Vestibulum vel iaculis mauris. Maecenas maximus luctus orci eu tristique. Donec nisi urna, molestie eu sem id, imperdiet luctus sem. Vestibulum cursus turpis nec mollis ullamcorper. Phasellus eu risus nec sem sollicitudin aliquet. Phasellus luctus enim vulputate, volutpat augue sit amet, dapibus mi. Proin suscipit finibus libero et ullamcorper.Ut sed enim dictum, sagittis sem pellentesque, venenatis sapien. Etiam sagittis elit sit amet magna volutpat finibus. Ut eu lorem sit amet elit blandit rutrum in vitae massa. Vivamus elementum ac augue non blandit. Praesent sodales massa enim, nec aliquam velit tincidunt non. Vestibulum purus dolor, volutpat vel eleifend vitae, commodo et mi. Integer sollicitudin tempus ipsum, vel vestibulum tellus.", rating: 5, date: Date()))
    }
}
