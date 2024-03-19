import SwiftUI

struct MenuView: View {
    var body: some View {
        HStack {
            VStack {
                
                Spacer().frame(height: 50)
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text("May")
                    .font(.title)
                    .padding()
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "house")
                        Text("Home")
                            .font(.system(size: 14))
                            .padding()
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("Account")
                            .font(.system(size: 14))
                            .padding()
                    }
                    HStack {
                        Image(systemName: "gear")
                        Text("Setting")
                            .font(.system(size: 14))
                            .padding()
                    }
                }
                .padding()
                .alignmentGuide(.leading) { _ in 0 }
                Spacer()
            }
            .frame(width: 300, height: 720)
            .border(.black)
            .background(Color.white)
            Spacer()
        }
    }
}

#Preview {
    MenuView()
}
