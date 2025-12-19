import SwiftUI

struct FavoriteSellersView: View {
    @State private var selectedCategory = 0
    var products: [ProductCardViewItem]
    var name: String
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationStack {
                    VStack(spacing: 20) {
                        Spacer()
                        
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)], spacing: 60) {
                                ForEach(products) { product in
                                    if (product.isFavorite == true) {
                                        ProductCardView(catdItem: product)
                                    }
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
    FavoriteSellersView(products: [] ,name: "Favorite")
}
