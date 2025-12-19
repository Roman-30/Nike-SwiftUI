import SwiftUI	

struct MainView: View {
    var body: some View {
        TabView {
            BestSellersView(name: "Best")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            ShopView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Favorites")
                }
            
            FavoriteSellersView(name: "Favorite")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }

            BagView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Bag")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MainView()
}

