import Foundation

struct SubmissionRequestDTO: Encodable {
    let ref: String
    let inputs: Inputs

    struct Inputs: Encodable {
        let version: String
        let changed: String
    }

    init(version: String, changed: String) {
        self.ref = "master"
        self.inputs = .init(version: version, changed: changed)
    }
}
