import SwiftUI

struct BagView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Bag Screen")
                    .font(.largeTitle)
                Spacer()
            }
            .navigationTitle("Bag")
        }
    }
}

#Preview {
    BagView()
}
