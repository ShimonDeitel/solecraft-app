import Foundation

struct Project: Identifiable, Codable, Equatable {
    var id: UUID
    var createdAt: Date
    var title: String
    var hideType: String
    var pattern: String
    var stitchCount: String
    var notes: String

    init(id: UUID = UUID(), createdAt: Date = Date(), title: String = "", hideType: String = "", pattern: String = "", stitchCount: String = "", notes: String = "") {
        self.id = id
        self.createdAt = createdAt
        self.title = title
        self.hideType = hideType
        self.pattern = pattern
        self.stitchCount = stitchCount
        self.notes = notes
    }
}
