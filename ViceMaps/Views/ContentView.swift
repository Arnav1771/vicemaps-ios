import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var searchText: String = ""
    @State private var cameraCenter = CLLocationCoordinate2D(latitude: 25.7725, longitude: -80.1880) // Downtown Vice City
    @State private var activeRoute: RouteInfo? = nil
    @State private var destinationName: String = ""

    private let osrmService = OsrmService()

    var body: some View {
        ZStack {
            // 3D Map View
            ViceMapView(
                centerCoordinate: cameraCenter,
                zoomLevel: 16.5,
                pitch: 68.0,
                heading: 38.0
            )
            .ignoresSafeArea()

            // Google Stitch HUD Overlays
            VStack {
                TopHudView(
                    searchText: $searchText,
                    onLocateMe: {
                        locationManager.requestAuthorization()
                        if let loc = locationManager.lastLocation {
                            withAnimation {
                                cameraCenter = loc.coordinate
                            }
                        }
                    }
                )

                Spacer()

                if let route = activeRoute {
                    RouteCardView(
                        destinationName: destinationName,
                        distance: route.distanceFormatted,
                        duration: route.durationFormatted,
                        onClose: {
                            activeRoute = nil
                        }
                    )
                }
            }
        }
        .onReceive(locationManager.$lastLocation) { loc in
            if let loc = loc {
                // Update camera if tracking
            }
        }
    }
}
