import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorites Screen")
                    .font(.largeTitle)
                Spacer()
            }
            .navigationTitle("Favorites")
        }
    }
}	

#Preview {
    FavoritesView()
}
