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
                
                VStack {
                    Spacer()
                    HStack {
                        Button {
                            
                        } label: {
                            VStack {
                                Image("home")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("Home")
                                    .font(.system(size: 12))
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                        }
                        .padding()
                        Button {
                            
                        } label: {
                            VStack {
                                Image("wishlist")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("Wishlist")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            }
                        }
                        .padding()
                        Button {
                            
                        } label: {
                            VStack {
                                Image("mybooks")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                Text("My books")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                            }
                        }
                        .padding()
                    }
                    .frame(width: 360, height: 56)
                    .background(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: -5)
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
