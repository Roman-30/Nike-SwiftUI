import SwiftUI

struct FeaturedList: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 5) {
                ForEach(0..<10) { _ in
                    FeaturedItem()
                }
            }
        }
    }
}

#Preview {
    FeaturedList()
}
