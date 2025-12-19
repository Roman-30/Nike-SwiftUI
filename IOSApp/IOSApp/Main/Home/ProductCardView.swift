import SwiftUI

struct ProductCardViewItem: Identifiable {
    let id = UUID();
    var image: String
    var productName: String
    var productDescription: String
    var productPrice: String
    var isFavorite: Bool
                
    mutating func toggleFavorite() {
        isFavorite.toggle()
    }
}

struct ProductCardView: View {
    @State var catdItem: ProductCardViewItem;

    var body: some View {
        VStack(spacing: 8) {
            ZStack(alignment: .topTrailing) {
                
                Image(catdItem.image)
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
//                    .clipped()

                
                Button(action: {
                    catdItem.toggleFavorite()
                }) {
                    Image(systemName: catdItem.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(catdItem.isFavorite ? .red : .black)
                        .padding(8)
                        .background(Color.white)
                        .clipShape(Circle())
                }
                .padding(10)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text("Bestseller")
                    .font(.caption)
                    .foregroundColor(.orange)
                    .bold()

                Text(catdItem.productName)
                    .font(.headline)
                    .lineLimit(2)

                Text(catdItem.productDescription)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)

                Text(catdItem.productPrice)
                    .font(.headline)
                    .bold()
            }
            .padding(.leading, -10)
        }
        .frame(width: 180)
        
    }
}

// Пример использования
#Preview {
    ProductCardView(
        catdItem :
            ProductCardViewItem(
                image: "women",
                productName: "Nike Therma",
                productDescription: "Men’s Pullover Training Hoodie",
                productPrice: "US$33.97",
                isFavorite: false
            )
    )
}

