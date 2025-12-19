import SwiftUI

struct Search: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile Screen")
                    .font(.largeTitle)
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    Search()
}
