import SwiftUI

struct ActivitySelectionView: View {
    

    let activities = [
        Activity(name: "Air Max", imageName: "image 9"),
        Activity(name: "Air Max", imageName: "image 10"),
        Activity(name: "Cross-Training", imageName: "image 11"),
        Activity(name: "Air Max", imageName: "image 12"),
        Activity(name: "Air Max", imageName: "image 13"),
        Activity(name: "Air Max", imageName: "image 14"),
        Activity(name: "Air Max", imageName: "image 15"),
        Activity(name: "Air Max", imageName: "image 14"),
        Activity(name: "Air Max", imageName: "image 15"),
        Activity(name: "Air Max", imageName: "image 14")
    ];

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    List(activities) { activity in
                        ActivitySelectionItem(activity: activity)
                    }
                    .listStyle(PlainListStyle())

                }
                Button(action: {
                    
                }) {
                    Text("Next")
                        .frame(width: 125, height: 25)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(50)
                }
                .padding(.top, 670)
            }

        }
    }
}

struct ActivitySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySelectionView()
    }
}
