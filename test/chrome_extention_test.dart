import 'package:flutter_test/flutter_test.dart';
import 'package:chrome_extention/chrome_extention.dart';
import 'package:chrome_extention/chrome_extention_platform_interface.dart';
import 'package:chrome_extention/chrome_extention_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockChromeExtentionPlatform
    with MockPlatformInterfaceMixin
    implements ChromeExtentionPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ChromeExtentionPlatform initialPlatform = ChromeExtentionPlatform.instance;

  test('$MethodChannelChromeExtention is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelChromeExtention>());
  });

  test('getPlatformVersion', () async {
    ChromeExtention chromeExtentionPlugin = ChromeExtention();
    MockChromeExtentionPlatform fakePlatform = MockChromeExtentionPlatform();
    ChromeExtentionPlatform.instance = fakePlatform;

    expect(await chromeExtentionPlugin.getPlatformVersion(), '42');
  });
}
