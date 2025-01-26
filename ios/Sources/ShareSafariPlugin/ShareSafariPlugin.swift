import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ShareSafariPlugin)
public class ShareSafariPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ShareSafariPlugin"
    public let jsName = "ShareSafari"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "share", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ShareSafari()

    @objc func share(_ call: CAPPluginCall) {
        guard let url = call.getString("url") else {
            call.reject("URL is required")
            return
        }

        DispatchQueue.main.async {
            if let viewController = self.bridge?.viewController {
                self.implementation.share(url, from: viewController)
                call.resolve([
                    "status": "success"
                ])
            } else {
                call.reject("Unable to get view controller")
            }
        }
    }
}
