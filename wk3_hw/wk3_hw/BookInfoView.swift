import SwiftUI

struct BookInfoView: View {
    
    let image, title, auther, info : String
    let score: Int
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 210, height: 300)
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(auther)
                .font(.system(size: 14))
                .foregroundColor(.gray)
            HStack {
                ForEach(0..<score) { _ in
                    Image("star_filled")
                        .resizable()
                        .frame(width: 14, height: 14)
                }
                ForEach(0..<(5-score)) { _ in
                    Image("star")
                        .resizable()
                        .frame(width: 14, height: 14)
                }
                
                Text(String(score) + ".0 / 5.0")
                    .font(.system(size: 14))
            }
            Text(info)
                .multilineTextAlignment(.center)
                .font(.system(size: 14))
                .frame(width: 320, height: 72)
            
            Button {
                
            } label: {
                Text("Buy Now for $46.99")
                    .font(.system(size: 14))
                    .frame(width: 190, height: 36)
                    .foregroundColor(.white)
            }
            .background(Color.blue)
            .cornerRadius(5)
        
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        BookInfoView(image: "4", title: "Yves Saint Laurent", auther: "Suzy Menkes ", info: "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.", score: 4)
    }
}
