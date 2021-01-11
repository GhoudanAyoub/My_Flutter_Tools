import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyAS2NkxOnyOlrRVUVjvq0T6614Hp4ks3iU")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
