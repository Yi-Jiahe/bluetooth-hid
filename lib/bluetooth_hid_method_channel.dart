import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bluetooth_hid_platform_interface.dart';

/// An implementation of [BluetoothHidPlatform] that uses method channels.
class MethodChannelBluetoothHid extends BluetoothHidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bluetooth_hid');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
