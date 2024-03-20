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
                    Button {
                        
                    }label: {
                        HStack {
                            Image("sidehome")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Home")
                                .font(.system(size: 14))
                                .padding()
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        }
                    }
                    Button {
                        
                    }label: {
                        HStack {
                            Image("sideperson")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Account")
                                .font(.system(size: 14))
                                .padding()
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        }
                    }
                    Button {
                        
                    }label: {
                        HStack {
                            Image("sidesetting")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Setting")
                                .font(.system(size: 14))
                                .padding()
                                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                        }
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
