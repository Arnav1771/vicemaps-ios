import SwiftUI

extension Color {
    // GTA VI Neon Dusk Palette
    static let bgDeep = Color(red: 6/255, green: 8/255, blue: 18/255)
    static let bgHud = Color(red: 10/255, green: 14/255, blue: 26/255).opacity(0.85)
    static let bgCard = Color(red: 18/255, green: 26/255, blue: 46/255).opacity(0.9)

    static let neonCyan = Color(red: 0/255, green: 240/255, blue: 255/255)
    static let neonMagenta = Color(red: 255/255, green: 0/255, blue: 127/255)
    static let neonAmber = Color(red: 245/255, green: 158/255, blue: 11/255)
    static let neonEmerald = Color(red: 16/255, green: 185/255, blue: 129/255)

    static let textPrimary = Color(red: 248/255, green: 250/255, blue: 252/255)
    static let textSecondary = Color(red: 148/255, green: 163/255, blue: 184/255)
    static let textMuted = Color(red: 100/255, green: 116/255, blue: 139/255)

    static let borderSubtle = Color.white.opacity(0.08)
    static let borderCyan = Color.neonCyan.opacity(0.4)
}
