
import SwiftUI

struct Start: View {
    
    var body: some View {
        ZStack {
            
            Color.black
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            
                        Image("Image 1")
                            .resizable()
                            .ignoresSafeArea()
            
            
                        Rectangle()
                            .frame(height: 100)
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [
                                        .clear,
                                        .black
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .padding(.top, 700)
            
                        Rectangle()
                            .frame(height: 200)
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [
                                        .black,
                                        .black,
                                        .black,
                                        .black,
                                        .black,
                                        .black,
                                        .black.opacity(0.9),
                                        .black.opacity(0.8),
                                        .black.opacity(0.7),
                                        .black.opacity(0.6),
                                        .black.opacity(0.5),
                                        .black.opacity(0.4),
                                        .black.opacity(0.3),
                                        .black.opacity(0.2),
                                        .black.opacity(0.1),
                                        .clear,
                                        .clear,
                                        .clear
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .padding(.bottom, 600)
            
                        Text("To personalize your experience and connect you to sport, we've got a few questions for you.")
                            .font(.system(size: 33) .bold())
                            .foregroundColor(.white)
                            .frame(width: 340, height: 250)
                            .padding(.leading, -40)
                            .padding(.top, -375)
            
            Button(action: {
                print("eee")
            }) {
                Text("Get Started")
                    .foregroundColor(Color.black)
                    .font(.system(size: 20))
                    .padding(.horizontal, 40)
                    .padding(.vertical, 17)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
            }
            .padding(.top, 690)
            
//            Rectangle()
//                .frame(width: 185, height: 2)
//                .foregroundColor(.black)
//                .padding(.top, -380)
//    
//            Rectangle()
//                .frame(width: 70, height: 2)
//                .foregroundColor(.white)
//                .padding(.top, -380)
//                .padding(.leading, -95)
            
        }
    }
}

#Preview {
    Start()
}
