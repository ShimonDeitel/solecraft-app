import SwiftUI

/// Unique palette for Sole Craft - Leather Log — saddle-tan leather workbench with muted sage accent.
enum Theme {
    static let background = Color(hex: "#241D16")
    static let surface = Color(hex: "#241D16").opacity(0.001) == Color.clear ? Color(hex: "#241D16") : Color(hex: "#241D16")
    static let card = Color.white.opacity(0.06)
    static let accent = Color(hex: "#C97A3D")
    static let accentSecondary = Color(hex: "#6E8B6B")
    static let text = Color(hex: "#F5EEE3")
    static let textMuted = Color(hex: "#F5EEE3").opacity(0.6)

    static let titleFont: Font = .system(.title2, design: .serif).weight(.bold)
    static let headlineFont: Font = .system(.headline, design: .serif)
    static let bodyFont: Font = .system(.body, design: .serif)
    static let captionFont: Font = .system(.caption, design: .serif)

    static let cornerRadius: CGFloat = 16
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        (r, g, b) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: 1)
    }
}
