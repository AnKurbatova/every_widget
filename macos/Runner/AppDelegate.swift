import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return false
  }

    override func applicationWillFinishLaunching(_ notification: Notification) {
          super.applicationWillFinishLaunching(notification)
          if let window = NSApplication.shared.windows.first {
              window.styleMask.remove(.closable) // Убираем кнопку закрытия
          }
      }
}
