import SwiftUI

struct RouteCardView: View {
    let destinationName: String
    let distance: String
    let duration: String
    let onClose: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("GPS WAYPOINT ACTIVE")
                    .font(.system(size: 11, weight: .bold, design: .monospaced))
                    .foregroundColor(.neonCyan)

                Spacer()

                Button(action: onClose) {
                    Image(systemName: "xmark")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.textMuted)
                }
            }

            Text("Destination: \(destinationName)")
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.textPrimary)

            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("DISTANCE")
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.textMuted)
                    Text(distance)
                        .font(.system(size: 18, weight: .heavy, design: .monospaced))
                        .foregroundColor(.neonCyan)
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 2) {
                    Text("EST. DRIVE")
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.textMuted)
                    Text(duration)
                        .font(.system(size: 18, weight: .heavy, design: .monospaced))
                        .foregroundColor(.neonMagenta)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(Color.bgDeep)
            .cornerRadius(8)
        }
        .padding(16)
        .background(Color.bgHud)
        .cornerRadius(14)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.borderCyan, lineWidth: 1)
        )
        .padding(.horizontal, 16)
        .padding(.bottom, 24)
    }
}
