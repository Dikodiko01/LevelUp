//
//  AddBookView.swift
//  Bookworm
//
//  Created by Paul Hudson on 23/11/2021.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    @State private var rememberme = false
    @State private var swiftui = false
    @State private var run = false
    @State private var date = 26.03


    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $title)
                    
                    PushButton(title: "Бег [ /10 min]", isOn: $run)
                    
                    PushButton(title: "Отжимание [ /10]", isOn: $rememberme)
                    
                    PushButton(title: "SwiftUI [ /5]", isOn: $swiftui)


                }

                Section {
                    TextEditor(text: $review)
                    RatingView(rating: $rating)
                } header: {
                    Text("Write a review")
                }

                Section {
                    Button("Save") {
                        let newBook = Book(context: moc)
                        newBook.id = UUID()
                        newBook.title = title
                        newBook.author = author
                        newBook.rating = Int16(rating)
                        newBook.review = review
                        newBook.genre = genre
                        newBook.rememberme = Bool(rememberme)
                        newBook.swiftui = Bool(swiftui)
                        newBook.run = Bool(run)
                        newBook.date = Double(date)

                        try? moc.save()
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
