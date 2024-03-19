import Foundation

struct BookItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let author: String
}

let popular_books: [BookItem] = [
    BookItem(imageName: "1", title: "Fashionopolis", author: "Dana Thomas"),
    BookItem(imageName: "2", title: "Chanel", author: "Patrick Mauriès"),
    BookItem(imageName: "3", title: "Calligraphy", author: "June & Lucy"),
]

struct NewestBookItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let score: Int
    let author: String
}

let newest_books: [NewestBookItem] = [
    NewestBookItem(imageName: "4", title: "Book 3", score: 4, author: "Author 3"),
    NewestBookItem(imageName: "5", title: "Book 3", score: 3, author: "Author 3"),
    NewestBookItem(imageName: "6", title: "Book 3", score: 3, author: "Author 3"),
]
