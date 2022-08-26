
import 'bluetooth_hid_platform_interface.dart';

class BluetoothHid {
  Future<String?> getPlatformVersion() {
    return BluetoothHidPlatform.instance.getPlatformVersion();
  }
}
