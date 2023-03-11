import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'chrome_extention_platform_interface.dart';

/// An implementation of [ChromeExtentionPlatform] that uses method channels.
class MethodChannelChromeExtention extends ChromeExtentionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('chrome_extention');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
