import SwiftUI

struct TopHudView: View {
    @Binding var searchText: String
    let onLocateMe: () -> Void

    var body: some View {
        HStack(spacing: 10) {
            // Brand Logo Tag
            HStack(spacing: 6) {
                Text("TERRA")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.textPrimary)
                Text("3D")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.neonCyan)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            .background(Color.bgHud)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.borderSubtle, lineWidth: 1)
            )

            // Search Bar
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.textMuted)
                TextField("Search worldwide cities & streets…", text: $searchText)
                    .font(.system(size: 14))
                    .foregroundColor(.textPrimary)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(Color.bgHud)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.borderSubtle, lineWidth: 1)
            )

            // Real-Time GPS Locate Me Button
            Button(action: onLocateMe) {
                Image(systemName: "location.fill")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.neonCyan)
                    .frame(width: 44, height: 44)
                    .background(Color.bgHud)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.borderCyan, lineWidth: 1)
                    )
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 10)
    }
}
