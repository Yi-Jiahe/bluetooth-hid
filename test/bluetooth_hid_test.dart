import 'package:flutter_test/flutter_test.dart';
import 'package:bluetooth_hid/bluetooth_hid.dart';
import 'package:bluetooth_hid/bluetooth_hid_platform_interface.dart';
import 'package:bluetooth_hid/bluetooth_hid_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBluetoothHidPlatform 
    with MockPlatformInterfaceMixin
    implements BluetoothHidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BluetoothHidPlatform initialPlatform = BluetoothHidPlatform.instance;

  test('$MethodChannelBluetoothHid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBluetoothHid>());
  });

  test('getPlatformVersion', () async {
    BluetoothHid bluetoothHidPlugin = BluetoothHid();
    MockBluetoothHidPlatform fakePlatform = MockBluetoothHidPlatform();
    BluetoothHidPlatform.instance = fakePlatform;
  
    expect(await bluetoothHidPlugin.getPlatformVersion(), '42');
  });
}
