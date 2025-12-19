import SwiftUI

struct DetailView: View {

    let title: String

    var body: some View {
        Text(title)
            .font(.largeTitle)
            .bold()
    }
}
