//
//  BasicSwiftUIView.swift
//  BasicSwiftUI
//
//  Created by Mamikos on 04/05/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import SwiftUI
import MapKit

struct BasicSwiftUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TextExample: View {
    var body: some View {
        Text("Created by Mamikos on 30/04/20.Copyright © 2020 Codingtive. All rights reserved.Created by Mamikos on 30/04/20.Copyright © 2020 Codingtive. All rights reserved.All rights reserved.Created by Mamikos on 30/04/20.Copyright © 2020 Codingtive. All rights reserved.")
            .foregroundColor(.primary)
            .italic()
            .underline()
            .font(Font.system(.title, design: .rounded))
            .multilineTextAlignment(.center)
            .truncationMode(.middle)
            .padding()
            .background(Color.gray)
            .border(Color.black, width: 3)
    }
}

struct ImageExample: View {
    var body: some View {
        VStack {
            Image("borobudur")
                .resizable()
                .aspectRatio(16/8, contentMode: .fit)
            Spacer()
            Image("toraja")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .overlay(Circle().stroke(Color.red, lineWidth: 10))
                .scaledToFit()
                .clipShape(Circle())
        }
    }
}

struct ButtonExample: View {
    let clickedResult = "Button Pressed"
    let clickedPrint: () -> () = {
        print("Pressed")
    }
    
    var body: some View {
        VStack {
            Button(action: {
                print(self.clickedResult)
            }, label: {
                VStack {
                    Image("toraja")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 10)
                        .padding()
                    
                    Text("Press Button!")
                        .foregroundColor(.white)
                        .padding([.trailing, .leading], 20)
                        .padding([.vertical], 10)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
            })
            
            Spacer()
            
            Button(action: clickedPrint) {
                VStack {
                    Text("Give Gift")
                    Image(systemName: "gift")
                }
            }
            .padding([.vertical], 10)
            .padding([.horizontal], 24)
            .background(Color.green)
            .cornerRadius(10)
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct CircleImageView: View {
    var body: some View {
        Image("borobudur")
            .resizable()
            .frame(width: 240, height: 240, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 10))
            .shadow(radius: 10)
    }
}

struct DetailMapView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct BasicSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BasicSwiftUIView()
            DetailMapView()
        }
    }
}
