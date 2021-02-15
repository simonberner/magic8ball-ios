import SwiftUI

struct MagicBallView: View {
    
    let number: Int
    
    var body: some View {
        Image("ball\(number)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
