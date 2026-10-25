import SwiftUI
import MapKit

struct ViceMapView: UIViewRepresentable {
    var centerCoordinate: CLLocationCoordinate2D
    var zoomLevel: Double
    var pitch: CGFloat
    var heading: Double

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.overrideUserInterfaceStyle = .dark
        mapView.showsBuildings = true
        mapView.showsTraffic = false
        mapView.pointOfInterestFilter = .excludingAll

        let camera = MKMapCamera(
            lookingAtCenter: centerCoordinate,
            fromDistance: 800,
            pitch: pitch,
            heading: heading
        )
        mapView.setCamera(camera, animated: false)
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let camera = MKMapCamera(
            lookingAtCenter: centerCoordinate,
            fromDistance: 800,
            pitch: pitch,
            heading: heading
        )
        uiView.setCamera(camera, animated: true)
    }
}
