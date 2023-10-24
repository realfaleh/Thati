import SwiftUI

struct scenarioView: View {
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Button(action: {}) {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color("Button.fill"))
                    Text("Social")
                        .foregroundColor(Color("Button.fill"))
                }
                Spacer(minLength: 100)
                
                Text("Scenario 1")
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
            .padding()
            .frame(maxHeight: 60)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 2)
            .fixedSize(horizontal: false, vertical: true)
                
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("Purple1").opacity(1.5))
                        .frame(width: 700, height: 400)
                        .shadow(radius: 5)
                        .padding()
                        .overlay {
                            VStack {
                                Image("Bully")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 800, height: 600)
                            }
                        }
                    HStack{
                        Button(action: { }) {
                            Text("Option 1")
                                .foregroundColor(.black)
                                .frame(width: 150, height: 40)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        }
                        .padding(.vertical, 20)
                        .padding(.trailing, 10)
                        
                        
                        Button(action: {}) {
                            Text("Option 2")
                                .foregroundColor(.black)
                                .frame(width: 150, height: 40)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        }
                        .padding(.vertical, 20)
                        .padding(.leading, 380)
                    }
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .background(
            Image("BKG2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct scenarioView_Previews: PreviewProvider {
    static var previews: some View {
        scenarioView()
    }
}
