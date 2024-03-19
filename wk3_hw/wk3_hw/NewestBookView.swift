//
//  NewestBookView.swift
//  wk3_hw
//
//  Created by 許昀韋 on 2024/3/20.
//

import SwiftUI

struct NewestBookView: View {
    let books: [NewestBookItem]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(books) { book in
                    VStack {
                        Image(book.imageName)
                            .resizable()
                            .frame(width: 140, height: 200)
                            .cornerRadius(10)
                        HStack {
                            ForEach(0..<book.score) { _ in
                                Image("star_filled")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                            }
                            ForEach(0..<(5-book.score)) { _ in
                                Image("star")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                            }
                        }
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
    NewestBookView(books: newest_books)
}
