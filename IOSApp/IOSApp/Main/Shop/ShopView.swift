import SwiftUI

struct ShopView: View {

    @State private var selectedCategory: Category = .men

    let bestSellers: [ShopItem] = [
        ShopItem(title: "Best Sellers", image: "image 11"),
        ShopItem(title: "Nike Air", image: "image 10")
    ]

    let newFeatured: [ShopItem] = [
        ShopItem(title: "Running", image: "image 12"),
        ShopItem(title: "Training", image: "image 13")
    ]

    var body: some View {
        NavigationStack {
            
                VStack(alignment: .leading, spacing: 25) {

                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .foregroundColor(.primary)
                                .padding(.horizontal)
                        }.padding(.horizontal)
                        // Заголовок
                        Text("Shop")
                            .font(.largeTitle)
                            .padding(.horizontal)
                    }
//                     Переключатель Men / Women / Kids
                    categorySelector
//
//                    // Первый горизонтальный блок
                    section(title: "Must-Haves, Best Sellers & More",
                            items: bestSellers)
//
                    FeaturedList()
                }
            
        }
    }
}

private extension ShopView {

    var categorySelector: some View {
        HStack(spacing: 20) {
            ForEach(Category.allCases, id: \.self) { category in
                VStack(spacing: 15) {
                    Button {
                        withAnimation {
                            selectedCategory = category
                        }
                    } label: {
                        Text(category.rawValue)
                            .foregroundColor(
                                selectedCategory == category ? .black : .gray
                            )
                            .fontWeight(.medium)
                    }

                    // Индикатор
                    Rectangle()
                        .frame(width: 35, height: 2)
                        .foregroundColor(
                            selectedCategory == category ? .black : .clear
                        )
                }
            }
        }.padding(.horizontal)
    }
}

private extension ShopView {

    func section(title: String, items: [ShopItem]) -> some View {
        VStack(alignment: .leading, spacing: 30) {

            Text(title)
                .font(.headline)
//                .padding(.horizontal)

            ScrollView(.horizontal) {
                HStack(spacing: 5) {
                    ForEach(items) { item in
                        NavigationLink {
                            BestSellersView(name: "Seller")
                        } label: {
                            ShopCard(item: item)
                        }
                    }
                }
//                .padding(.horizontal)
            }
        }
        .padding(.leading)
    }
}
	

#Preview {
    ShopView()
}
