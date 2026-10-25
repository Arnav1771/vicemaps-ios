import Foundation
import CoreLocation

struct RouteInfo: Identifiable {
    let id = UUID()
    let distanceMeters: Double
    let durationSeconds: Double
    let distanceFormatted: String
    let durationFormatted: String
    let coordinates: [CLLocationCoordinate2D]
}

actor OsrmService {
    func calculateRoute(
        from origin: CLLocationCoordinate2D,
        to destination: CLLocationCoordinate2D
    ) async throws -> RouteInfo? {
        let urlStr = "https://router.project-osrm.org/route/v1/driving/\(origin.longitude),\(origin.latitude);\(destination.longitude),\(destination.latitude)?overview=full&geometries=geojson"
        guard let url = URL(string: urlStr) else { return nil }

        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpRes = response as? HTTPURLResponse, httpRes.statusCode == 200 else {
            return nil
        }

        guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
              let routes = json["routes"] as? [[String: Any]],
              let primary = routes.first else {
            return nil
        }

        let dist = primary["distance"] as? Double ?? 0.0
        let dur = primary["duration"] as? Double ?? 0.0

        var points: [CLLocationCoordinate2D] = []
        if let geom = primary["geometry"] as? [String: Any],
           let coords = geom["coordinates"] as? [[Double]] {
            points = coords.compactMap { pair in
                guard pair.count >= 2 else { return nil }
                return CLLocationCoordinate2D(latitude: pair[1], longitude: pair[0])
            }
        }

        let miles = dist / 1609.34
        let mins = Int(dur / 60.0)

        return RouteInfo(
            distanceMeters: dist,
            durationSeconds: dur,
            distanceFormatted: String(format: "%.1f MI", miles),
            durationFormatted: "\(mins) MIN",
            coordinates: points
        )
    }
}
