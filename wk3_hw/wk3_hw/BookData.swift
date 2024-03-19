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
    BookItem(imageName: "4", title: "Book 3", author: "Author 3"),
    BookItem(imageName: "5", title: "Book 3", author: "Author 3"),
    BookItem(imageName: "6", title: "Book 3", author: "Author 3"),
]
