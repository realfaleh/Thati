import SwiftUI

struct ContentView3: View {
    @State private var showSpecificView = false
    var body: some View {
       // NavigationView {

        
       
            // ZStack {
            // Image("BKG2")
            //            VStack(spacing: 30)
            //            {
            HStack {
                //                    Button(action: {}) {
                //                        Image(systemName: "arrow.left")
                //                            .foregroundColor(Color("Button.fill"))
                //                        Text("Home")
                //                            .foregroundColor(Color("Button.fill"))
                //                    }
                Spacer(minLength: 100)
                
                Text("Home")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                
                Spacer()
                
                //                    Button(action: {}) {
                //                        Circle()
                //                            .fill(Color("Button.C"))
                //                            .frame(width: 40, height: 40)
                //                            .overlay(
                //                                Image(systemName: "square.and.arrow.up")
                //                                    .foregroundColor(Color("Button.fill"))
                //                            )
                //                    }
            }
            .padding()
            .frame(maxHeight: 60)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
            .fixedSize(horizontal: false, vertical: true)
            //}// end vstack
            //  NavigationView {
        
            GeometryReader{ geometry in
              
                VStack(spacing: -5){
                    SearchBarView()
                    HStack {
                        Image("Noura's account").resizable()
                            .frame(width: 100, height:100)
                        
                        Text("Hello, Noura 👋🏻")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.trailing, 760.0)
                    Text("")
                    Text("")
                    // VStack{
                    HStack(spacing: 740){
                        Text("Subjects")
                        //  .font(.system(size:25))
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        //  .padding(.trailing, 900.0)
                            .padding(.leading, 50)
                        
                        //                        Button(action: {
                        //
                        //                            print("Button action")
                        //                        }) {
                        // NavigationLink(destination: subjectView()) {
                        //                    Button(action: {
                        //                                    showSpecificView = true
                        //                                }) {
                        NavigationLink(destination: subjectView()) {
                            Text("See more")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color("Button.fill"))
                                .padding(.horizontal)
                            //.background(Color.white)
                                .cornerRadius(20)
                        }.padding(.leading, 60.0)
                        if showSpecificView {
                            subjectView()
                        }
                        //.padding(.leading, 990.0)
                    }
                    .padding(.trailing, 20.0)
                    
                    Text("")
                    
                    // }
                    
                    
                    HStack {
                        
                        Rectangle()
                            .fill(Color("Orange"))
                            .frame(width:188, height: 203)
                            .cornerRadius(8)
                            .overlay(
                                VStack{
                                    Image("Violence")
                                        .resizable()
                                        .frame(width: 141, height: 141).shadow(radius: 5)
                                    
                                    Text("Personality Disorder")
                                }
                            )
                        Text("")
                        Text("")
                        
                        
                        Rectangle()
                            .fill(Color("Pink"))
                            .frame(width:188, height: 203)
                            .cornerRadius(8)
                            .overlay(
                                VStack{
                                    Image("Cultural")
                                        .resizable()
                                        .frame(width: 141, height: 141).shadow(radius: 5)
                                    
                                    Text("Cultural & Parenting")
                                }
                            )
                        Text("")
                        Text("")
                        
                        
                        Rectangle()
                            .fill(Color("Blue"))
                            .frame(width:188, height: 203)
                            .cornerRadius(8)
                            .overlay(
                                VStack{
                                    Image("Social")
                                        .resizable()
                                        .frame(width: 141, height: 141).shadow(radius: 5)
                                    
                                    Text("Social Awarness")
                                }
                            )
                        Text("")
                        Text("")
                        
                        
                        Rectangle()
                            .fill(Color("Purple2"))
                            .frame(width:188, height: 203)
                            .cornerRadius(8)
                            .overlay(
                                VStack{
                                    Image("Mental")
                                        .resizable()
                                        .frame(width: 141, height: 141).shadow(radius: 5)
                                    
                                    Text("Mental Health")
                                }
                            )
                        Text("")
                        Text("")
                        
                        
                        Rectangle()
                            .fill(Color("Green"))
                            .frame(width:188, height: 203)
                            .cornerRadius(8)
                            .overlay(
                                VStack{
                                    Image("Money")
                                        .resizable()
                                        .frame(width: 141, height: 141).shadow(radius: 5)
                                    
                                    Text("Financial Awareness")
                                }
                            )
                        Text("")
                        Text("")
                        
                        
                        
                        
                        
                    }.padding(.leading, 20.0)
                    // end hstack
                    Text("")
                    Text("")
                    HStack(spacing: 740){
                        
                        Text("Achivments")
                        //.font(.system(size:25))
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading,30 )
                        
                        // Text("")
                        //                        Button(action: {
                        //
                        //                            print("See more tapped")
                        //                        }) {
                        NavigationLink(destination: AchivementView()) {
                            
                            Text("See more")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color("Button.fill"))
                                .padding(.horizontal)
                            //  .background(Color.white)
                                .cornerRadius(20)
                        }.padding(.trailing, -30.0)
                        //.padding(.leading, 990.0)
                    }.padding(.trailing, 20.0)
                    
                    
                    
                    
                    HStack{
                        
                        Image("Well done rewared")
                            .resizable().frame(width: 210, height: 210)
                            .shadow(radius: 5)
                        Text("")
                        
                        Image("Star reward")
                            .resizable().frame(width: 210, height: 210)
                            .shadow(radius: 5)
                        
                        Image("Super work reward")
                            .resizable().frame(width: 250, height: 250)
                            .shadow(radius: 5)
                        
                        
                    }
                    .padding(.trailing, 350.0)//end hstack
                    
                    
                    
                }.frame (width: geometry.size.width,height: geometry.size.height)
                
                
                
                    .background(
                        Image("BKG2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                    )
                
            }
//            .navigationBarTitle("")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarBackButtonHidden(true)
//            .navigationBarBackButtonHidden(true)
       
        }
    }
    



#Preview {
    ContentView3()
        .previewDevice("iPad Air (4th generation)")
}

//scrollview
