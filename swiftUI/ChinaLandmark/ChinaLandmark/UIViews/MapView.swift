//
//  MapView.swift
//  ChinaLandmark
//
//  Created by 小天才智能电脑 on 2020/5/30.
//  Copyright © 2020 小天才智能电脑. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let center: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {  MKMapView() }
     
    func updateUIView(_ uiView: MKMapView, context: Context) {
        

        
        let span = MKCoordinateSpan(
        latitudeDelta: 0.02,
        longitudeDelta: 0.02
        )
        
        uiView.setRegion(
            MKCoordinateRegion(center: center, span: span),
            animated: true)
    
    }
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(center: CLLocationCoordinate2D(
            latitude: 39.9087243,
            longitude: 116.3952859
        ))
    }
}
#endif
