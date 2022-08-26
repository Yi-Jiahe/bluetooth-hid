import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bluetooth_hid/bluetooth_hid_method_channel.dart';

void main() {
  MethodChannelBluetoothHid platform = MethodChannelBluetoothHid();
  const MethodChannel channel = MethodChannel('bluetooth_hid');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
