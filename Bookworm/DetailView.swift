//
//  DetailView.swift
//  Bookworm
//
//  Created by Paul Hudson on 23/11/2021.
//

import SwiftUI

struct DetailView: View {
    let book: Book

    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var showingDeleteAlert = false
    @State private var rememberme = false

    var body: some View {
        ScrollView {
//            ZStack(alignment: .bottomTrailing) {
//                Image(book.genre ?? "Fantasy")
//                    .resizable()
//                    .scaledToFit()
            //Text(book.date ?? 26.03)
            PushButton(title: "Бег [ /10 min]", isOn: .constant(Bool(book.run)))
            PushButton(title: "Отжимание [ /10]", isOn: .constant(Bool(book.rememberme)))
            
            PushButton(title: "SwiftUI [ /60 min]", isOn: .constant(Bool(book.swiftui)))
            
            
            
            RatingView(rating: .constant(Int(book.rating)))
                .font(.largeTitle)
            
            Text(book.review ?? "No review")
                .padding()
            
            
            //PushButton(title: "title something", isOn: $rememberme)
            
            //Text(book.rememberme ?? false)
        }
        .navigationTitle(book.title ?? "Unknown Book")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Delete book?", isPresented: $showingDeleteAlert) {
            Button("Delete", role: .destructive, action: deleteBook)
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Are you sure?")
        }
        .toolbar {
            Button {
                showingDeleteAlert = true
            } label: {
                Label("Delete this book", systemImage: "trash")
            }
        }
    }

    func deleteBook() {
        moc.delete(book)

//        try? moc.save()
        dismiss()
    }
}



