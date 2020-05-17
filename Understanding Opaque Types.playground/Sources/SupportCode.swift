import Foundation

public func example(_ description: String, action: () -> Void) {
    print("\n--- \(description) example ---")
    action()
}
