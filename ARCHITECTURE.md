# ViceMaps iOS Architecture & Build Guide

## Overview
ViceMaps iOS provides native Apple platform integration using Swift 6, SwiftUI, and MapLibre Native / Metal 3D shading.

### Prerequisites
- macOS 14 Sonoma or newer
- Xcode 15.4 or Xcode 16
- Apple Developer Account (for device deployment and TestFlight distribution)

### Core Frameworks
- `SwiftUI`: Declarative UI and liquid glass effects
- `MapKit` & `MapLibre`: 3D map tile rendering and building extrusions
- `CoreLocation`: Sub-meter hardware GPS tracking
- `URLSession`: Concurrency-safe OSRM turn-by-turn routing
