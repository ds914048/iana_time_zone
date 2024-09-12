import Flutter
import UIKit

public class IanaTimeZonePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "iana_time_zone", binaryMessenger: registrar.messenger())
    let instance = IanaTimeZonePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "getIanaTimeZone") {
      result(getIanaTimeZone())
    } else {
      result(FlutterMethodNotImplemented)
    }
  }

  private func getIanaTimeZone() -> String {
    let timeZone = TimeZone.current
    return timeZone.identifier // This returns IANA time zone identifier
  }
}