import SwiftUI

struct ContentView: View {

    var body: some View {
        
        NavigationView {
            VStack {
                
                Text("Popular Books")
                    .font(.title)
                    .padding()

                BookView(books: popular_books)
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.horizontal.3")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                }
            }
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}
