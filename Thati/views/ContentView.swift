import SwiftUI

struct ContentView: View {
    struct RectangleData {
        let imageName: String
        let buttonTitle: String
       //@Environment(\.presentationMode) var presentationMode
    }
    
    var colors: [Color] = [Color("Blue"), Color("Purple1"), Color("Orange"), Color("Pink"), Color("Green"), Color("Purple2")]
    var rectangleData: [RectangleData] = [
        RectangleData(imageName: "Social", buttonTitle: "Social Awareness"),
        RectangleData(imageName: "Mental", buttonTitle: "Mental Health"),
        RectangleData(imageName: "Violence", buttonTitle: "Violence"),
        RectangleData(imageName: "Cultural", buttonTitle: "Cultural & Parenting"),
        RectangleData(imageName: "Money", buttonTitle: "Financial Awareness"),
        RectangleData(imageName: "Racism", buttonTitle: "Racism"),
        RectangleData(imageName: "Time", buttonTitle: "Time Management"),
        RectangleData(imageName: "Passion", buttonTitle: "Lack of Passion"),
        RectangleData(imageName: "Sharing", buttonTitle: "Sharing"),
    ]
    
    @State private var isShowingSocialAwareness = false
    @State private var isButtonPressed = false
    
    var body: some View {
//        NavigationView{
            ScrollView {
                VStack(spacing: 30) {
                    HStack {
                        
                        Button(action: {
                          
                            
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(Color("Button.fill"))
                            Text("Home")
                                .foregroundColor(Color("Button.fill"))
                        }
                        //                if isButtonPressed {
                        //                    ContentView3()
                        //                }
                        Spacer(minLength: 100)
                        
                        Text("Subjects")
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Circle()
                                .fill(Color("Button.C"))
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Image(systemName: "square.and.arrow.up")
                                        .foregroundColor(Color("Button.fill"))
                                )
                        }
                    }
                }
                .padding()
                .frame(maxHeight: 60)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
                .fixedSize(horizontal: false, vertical: true)
                
                ScrollView {
                    LazyVStack() {
                        ForEach(0..<3) { row in
                            Spacer()
                            HStack(spacing: 50) {
                                ForEach(0..<3, id: \.self) { column in
                                    let index = (row * 3) + column
                                    let data = rectangleData[index % rectangleData.count]
                                    
                                    Button(action: {
                                        if data.buttonTitle == "Social Awareness" {
                                            isShowingSocialAwareness = true
                                        }
                                    }) {
                                        RoundedRectangle(cornerRadius: 25.0)
                                            .fill(colors[index % colors.count])
                                            .frame(width: 300, height: 280)
                                            .shadow(radius: 10)
                                            .padding()
                                            .overlay {
                                                VStack {
                                                    Image(data.imageName)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 200, height: 200)
                                                    
                                                    HStack {
                                                        Text(data.buttonTitle)
                                                            .fontWeight(.bold)
                                                            .foregroundColor(.black)
                                                            .padding(.leading)
                                                        
                                                        Spacer()
                                                        
                                                        Circle()
                                                            .fill(Color("Button.C"))
                                                            .frame(width: 40, height: 40)
                                                            .overlay(
                                                                Image(systemName: "play.fill")
                                                                    .foregroundColor(Color("Button.fill"))
                                                                    .aspectRatio(contentMode: .fit)
                                                            )
                                                            .padding(.trailing)
                                                    }
                                                    .frame(width: 280, height: 56)
                                                    .background(Color.white)
                                                    .cornerRadius(15)
                                                }
                                            }
                                    }
                                }
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        Image("BKG2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                    )
                    .edgesIgnoringSafeArea(.all)
                }
            }
            .navigationBarTitle(Text("Subjects"))
            .fullScreenCover(isPresented: $isShowingSocialAwareness) {
                subjectView()
            }
            
//            .fullScreenCover(isPresented: $isButtonPressed) {
//                ContentView3()
//            }
       // }//end nav
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
