import Foundation
import UIKit

@objc public class ShareSafari: NSObject {
    @objc public func share(_ url: String, from viewController: UIViewController) {
        let safariItem = MyActivity(title: "Open in Safari", image: UIImage(systemName: "safari")  ) { sharedItems in
             guard let url = sharedItems[0] as? URL else { return }
             UIApplication.shared.open(url)
         }

        let items = [URL(string: url)!]
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: [safariItem])

        // Present the view controller without excluding any activity types
        viewController.present(activityViewController, animated: true, completion: nil)
    }
}
