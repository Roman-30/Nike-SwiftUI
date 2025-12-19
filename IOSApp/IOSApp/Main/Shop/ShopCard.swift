import SwiftUI

struct ShopCard: View {

    let item: ShopItem

    var body: some View {
        VStack(alignment: .leading) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()

            Text(item.title)
                .font(.subheadline)
                .padding(.top, 10)
        }
//        .frame(width: 180)
//        .padding(.horizontal)
    }
}

#Preview {
    ShopCard(item: ShopItem(title: "test", image: "image 9"));
}
