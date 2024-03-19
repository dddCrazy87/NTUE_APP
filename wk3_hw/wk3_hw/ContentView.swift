import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Popular Books")
                .font(.title)
                .padding()

            BookView(books: popular_books)
        }
    }
}

#Preview {
    ContentView()
}
