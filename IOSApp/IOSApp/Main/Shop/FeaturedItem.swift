import SwiftUI

struct FeaturedItem: View {
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Image("image 9") // Используйте ваше изображение
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width ,height: 100)
                    .clipped()
                
                Text("New & Featured")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
            }
            .frame(width: geometry.size.width, height: 100)
            .clipped()
        }.frame(height: 100)
    }
}

#Preview {
    FeaturedItem()
}
