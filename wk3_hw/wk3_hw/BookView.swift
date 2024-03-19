import SwiftUI

struct BookView: View {
    let books: [BookItem]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(books) { book in
                    VStack {
                        Image(book.imageName)
                            .resizable()
                            .frame(width: 140, height: 200)
                            .cornerRadius(10)
                        Text(book.title)
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .frame(width: 140)
                        Text(book.author)
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 140)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    BookView(books: popular_books)
}
