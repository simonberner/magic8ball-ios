import SwiftUI

struct ContentView: View {
    
    // State: property wrapper which lets SwiftUI know, when to update/rebuild the views
    // which are using the property/variable magicBallNumber. In our case here, SwiftUI will
    // create a new MagicBallView from scratch each time the magicBallNumber variable changes.
    @State var magicBallNumber = 1
    
    var body: some View {
        ZStack {
            Color(.systemTeal).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack (alignment: .center, spacing: 0) {
                Text("Ask Me Anything...")
                    .font(.system(size: 40))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                MagicBallView(number: magicBallNumber)
                Spacer()
                Button(action: { //action closure ()
                    self.magicBallNumber = Int.random(in: 1...5)
                }) {
                    Text("Ask me now!")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

