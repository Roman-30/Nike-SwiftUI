import SwiftUI

struct SellerStruct: Identifiable {
    let id: UUID = UUID()
    var category: String
    var products: [ProductCardViewItem]
}

struct BestSellersView: View {
    @State private var selectedCategory = 0
    var name: String
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationStack {
                    VStack(spacing: 20) {
                        Spacer()
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 60) {
                                ForEach(0..<sellerStructures.map { $0.category }.count, id: \.self) { index in
                                    Button(action: {
                                        selectedCategory = index
                                    }) {
                                        Text(sellerStructures.map { $0.category }[index])
                                            .font(.headline)
                                            .foregroundColor(selectedCategory == index ? .black : .gray)
                                            .padding(.bottom, 8)
                                            .border(selectedCategory == index ? Color.black : Color.clear, width: 1)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)], spacing: 60) {
                                ForEach(sellerStructures[selectedCategory].products) { product in
                                    ProductCardView(catdItem: product)
                                }
                            }
                            
                        }
                    }
                }
               
                .toolbar {
                    	
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                             				
                            Button(action: { /* действие */ }) {
                                Image(systemName: "chevron.backward")
                                    .foregroundStyle(Color.black)
                            }
                
                        }
                        .padding(.horizontal)
                    }
                    
                    ToolbarItem {
                        HStack {
                        
                            Text(name)
                        
                        }
                        .padding(.horizontal)
                    }
            
                    // Правая часть тулбара
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(spacing: 16) {
                            Button(action: {
                                // Действие для кнопки "плюс/минус"
                            }) {
                                Image(systemName: "plus.forwardslash.minus")
                                    .foregroundColor(.gray)
                            }
                            
                            Button(action: {
                                // Действие для кнопки поиска
                            }) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                            }
                        }.padding(.horizontal)
                    }
                }
            }
        }
    }
}


#Preview {
    BestSellersView(name: "Best Sellers")
}
