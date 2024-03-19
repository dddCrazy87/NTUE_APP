import SwiftUI

struct ContentView: View {
    
    @State private var isMenuOpen = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text("Popular Books")
                            .font(.title)
                            .padding()

                        BookView(books: popular_books)
                    }
                    VStack {
                        Text("Newest Books")
                            .font(.title)
                            .padding()

                        NewestBookView(books: newest_books)
                    }
                }
                
                if isMenuOpen {
                    Color.black.opacity(0.5)
                        .onTapGesture {
                            withAnimation {
                                self.isMenuOpen.toggle()
                            }
                        }

                    MenuView()
                        .transition(.move(edge: .leading))
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        withAnimation {
                            self.isMenuOpen.toggle()
                        }
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
