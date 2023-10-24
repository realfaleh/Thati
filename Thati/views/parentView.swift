import SwiftUI

struct parentView: View {
    @State private var selectedDay = 1
    @State private var selectedMonth = 1
    @State private var selectedYear = 2023
    @State var name: String = ""
    @State private var isPressed = false
    let lightGrayColor=Color(red: 239.0/255.0 , green :243.0/255.0,blue:244.0/255.0)
    
    var body: some View {
        VStack {
            Text("Create your child's account")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack {
                  
                    Image("Profile")
                        .padding(.leading, -500.0)
                    
                   
                    VStack(spacing:70 ){
                      
                        Text("What is your child name?")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 200.0)
                            
                        TextField("Name", text: $name)
                            .padding(.all, 20)
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                            .cornerRadius(15.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15.0)
                                    .stroke(lineWidth: 2.0)
                                    .foregroundColor(Color("lavender"))
                                   
                            )
                            .frame(width: 445.0, height: 61.0)
                            .padding(-40)
                            //.foregroundColor(.gray)
                            
                        Text("How old is your child?")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 225.0)
                    }
                    .padding(.trailing, 580.0)//end vstack
                
                   
                    
                    HStack {
                        Picker("Day", selection: $selectedDay) {
                            ForEach(1...31, id: \.self) { day in
                                Text("\(day)")
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(maxWidth: .infinity)
                        
                        Picker("Month", selection: $selectedMonth) {
                            ForEach(1...12, id: \.self) { month in
                                Text("\(month)")
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(maxWidth: .infinity)
                        
                        Picker("Year", selection: $selectedYear) {
                            ForEach(1999...2023, id: \.self) { year in
                                Text("\(year)")
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(maxWidth: .infinity)
                    }
                    Button(action: {
                        print("Button action")
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .foregroundColor(Color("lavender"))
                                .frame(width: 300.0, height: 50.0)
                            Text("Next")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                
                        }.padding(10.0)
                           
                    }
                      
                    HStack {
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 228, height: 1)
                                        .padding(.horizontal)
                                    
                                    Text("OR")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.gray)
                                    
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 228, height: 1)
                                        .padding(.horizontal)
                                }
                                .padding(.vertical)
                    
                    
                    
                   // Text("OR")
                    
                    Button(action: {
                        print("Button action")
                    }) {
                        HStack {
                            Image(systemName: "applelogo")
                            Text("Sign up with Apple")
                        }.padding(10.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10.0)
                                    .stroke(lineWidth: 2.0)
                                    .foregroundColor(Color("lavender"))
                                    .frame(width: 300.0, height: 50.0)
                            )
                    }.foregroundColor(Color.black)
                    
                    Button("Skip"){
                       

                        isPressed = true
                        
                    }.fullScreenCover(isPresented: $isPressed, content: ContentView3.init)
                        //.foregroundColor(Color("Button.fill"))
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .padding(.leading, 900)
                        .font(.system(size: 25))
                    
                }
                .padding()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        parentView()
    }
}
