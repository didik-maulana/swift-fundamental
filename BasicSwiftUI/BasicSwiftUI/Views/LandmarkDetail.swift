//
//  LandmarkDetail.swift
//  BasicSwiftUI
//
//  Created by Mamikos on 04/05/20.
//  Copyright © 2020 Codingtive. All rights reserved.
//

import SwiftUI
import MapKit

struct LandmarkMapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
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

struct DetailCircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 240, height: 240, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 10))
            .shadow(radius: 10)
    }
}

struct LandmarkDetail: View {
    var place: Place
    
    var body: some View {
        ScrollView {
            VStack {
                LandmarkMapView(coordinate: place.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 300)
                
                DetailCircleImageView(image: place.photo)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(place.title).font(.title)
                    HStack(alignment: .top) {
                        Text(place.description)
                            .font(.subheadline)
                            .padding(.top)
                        Spacer()
                        Text("ID : \(place.id)").font(.subheadline)
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle(Text(place.title), displayMode: .inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(place: places[0])
    }
}
