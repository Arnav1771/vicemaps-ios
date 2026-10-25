# 🌴 ViceMaps 3D · Native iOS Application

> 100% Pure Native iOS implementation of the **GTA VI Dusk 3D Map Engine**, engineered in **Swift 6** and **SwiftUI** (iOS 17+).

ViceMaps iOS is built completely natively without any webview wrappers, featuring hardware-accelerated 3D cartography, CoreLocation GPS telemetry, and Google Stitch liquid glass visual effects.

---

## ⚡ Native iOS Architecture

- **Language**: Swift 6 (iOS 17+)
- **UI Framework**: SwiftUI + Liquid Glass Effects
- **Map Engine**: MapLibre Native iOS & Metal 3D Shaders
- **Hardware GPS**: Apple `CLLocationManager` with sub-meter accuracy
- **Worldwide Routing**: Native Swift Concurrency (`async/await`) + OSRM global routing API

---

## 🏗️ Project Structure

```
vicemaps-ios/
├── Package.swift                          # Swift Package Manager Manifest
├── ViceMaps/
│   ├── App/
│   │   └── ViceMapsApp.swift              # SwiftUI App Lifecycle
│   ├── Views/
│   │   ├── ContentView.swift              # Main Map & HUD Coordinator
│   │   └── Components/
│   │       ├── TopHudView.swift           # Search & CoreLocation FAB
│   │       └── RouteCardView.swift        # Turn-by-Turn GPS Waypoint Card
│   ├── Map/
│   │   └── ViceMapView.swift              # 3D Map View & Camera Controller
│   ├── Routing/
│   │   └── OsrmService.swift              # Swift Concurrency OSRM Router
│   ├── Location/
│   │   └── LocationManager.swift          # CoreLocation Delegate Publisher
│   └── Theme/
│       └── Colors.swift                   # GTA VI Neon Dusk Palette
```

---

## 🛠️ Building & Running

1. Open `Package.swift` or `ViceMaps.xcodeproj` in **Xcode 15+**.
2. Select target device (iOS Simulator or Physical iPhone).
3. Build and Run (`Cmd + R`).

---

## 📄 License

MIT License © 2026 Arnav Bhargava.
