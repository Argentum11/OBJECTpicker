import SwiftUI
struct ContentView: View {
    let imageArray=["貝比麥格農","大天使","光耀蝗蟲","靛藍電漿","三核心"]

    @State private var imageIndex=0
    @State private var imageName:String="33"
    @State private var showAlert = false
    @State private var alertTitle = ""
    var body: some View {
        VStack {
            Text("OBJECT")
                .font(.custom("ss", size: 80.0))
            Image(imageName)
            .resizable()
                .frame(width: 400, height: 400, alignment: .center)

            Button{
                imageIndex=Int.random(in: 0...4)
                imageName=imageArray[imageIndex]
                showAlert = true
                //alertTitle="你抽到"+imageName
            } label:{
                Text("抽戰車")
                    .font(.custom("ss", size: 80.0))
            }
            .alert(isPresented: $showAlert) { () -> Alert in
                    let answer = imageArray[imageIndex]
                    return Alert(title: Text("你抽到"+answer))
                 }
            .foregroundColor(.white)
            .background(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
