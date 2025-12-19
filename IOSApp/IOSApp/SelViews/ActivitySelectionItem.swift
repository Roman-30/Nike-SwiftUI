import SwiftUI

struct Activity: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct ActivitySelectionItem : View {
    @State private var selectedActivity = false;

    var activity: Activity;
    
    var body: some View {
        HStack {
            Image(activity.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 2)
                )

            Text(activity.name)
                .foregroundColor(.gray)
                .font(.system(size: 28) .bold())
                .padding()

            Spacer()

            Image(systemName: selectedActivity == true ? "record.circle.fill" : "circle")
                .foregroundColor(selectedActivity == true ? .white : .gray)
                .onTapGesture {
                    selectedActivity.toggle()
                }
                .font(.system(size: 35))
        }
        .padding(.vertical, 8)
        .listRowBackground(Color.black)
    }
}


#Preview {
    ActivitySelectionItem(activity: Activity(name: "test", imageName: "women"))
}
