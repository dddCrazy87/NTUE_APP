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
    let info: String
}

let newest_books: [NewestBookItem] = [
    NewestBookItem(imageName: "4", title: "Yves Saint Laurent", score: 4, author: "Suzy Menkes ", info: "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion."),
    NewestBookItem(imageName: "5", title: "The Book of Signs", score: 3, author: "Rudolf Koch ", info: "The Book of Signs intro"),
    NewestBookItem(imageName: "6", title: "Stitched Up", score: 3, author: "Tansy E. Hoskins", info: "Stitched Up intro"),
]
