import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bluetooth_hid_method_channel.dart';

abstract class BluetoothHidPlatform extends PlatformInterface {
  /// Constructs a BluetoothHidPlatform.
  BluetoothHidPlatform() : super(token: _token);

  static final Object _token = Object();

  static BluetoothHidPlatform _instance = MethodChannelBluetoothHid();

  /// The default instance of [BluetoothHidPlatform] to use.
  ///
  /// Defaults to [MethodChannelBluetoothHid].
  static BluetoothHidPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BluetoothHidPlatform] when
  /// they register themselves.
  static set instance(BluetoothHidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
