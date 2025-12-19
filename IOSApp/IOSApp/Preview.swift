import SwiftUI

struct Preview: View {
    var body: some View {
        ZStack {
            Image("women")
                .resizable()
                .ignoresSafeArea()
        
            Rectangle()
                        .frame(height: 500)
                        .foregroundColor(.clear)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    .clear,
                                    
                                    .black,
                                    .black
                                ]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .padding(.top, 300)
            
            VStack {
                Image("nikeLogo")
                    .resizable()
                    .frame(width: 300, height: 170)
                    .padding(-50.0)
                    .padding(.leading, -240)
                    .padding(.bottom, 20)
               
            
                Text("Nike App\nBringing Nike Members the best products, inspiration and stories in sport.")
                    .font(.system(size: 32) .bold())
                    .foregroundColor(.white)
                    .frame(width: 350, height: 200)
                    .padding(.leading, -40)
            }
            .padding(.top, 200)
            
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        print("eee")
                    }) {
                        Text("Join Us")
                            .foregroundColor(Color.black)
                            .font(.system(size: 20))
                    }
                    .padding(8)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal, 45)
                    .padding(.vertical, 9)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    Button(action: {
                        print("eee")
                    }) {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                    }
                    .padding(8)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal, 45)
                    .padding(.vertical, 9)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(2)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                }
            }
            .padding(.top, 600)
        }
    }
}

#Preview {
    Preview()
}
