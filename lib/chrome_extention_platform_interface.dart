import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'chrome_extention_method_channel.dart';

abstract class ChromeExtentionPlatform extends PlatformInterface {
  /// Constructs a ChromeExtentionPlatform.
  ChromeExtentionPlatform() : super(token: _token);

  static final Object _token = Object();

  static ChromeExtentionPlatform _instance = MethodChannelChromeExtention();

  /// The default instance of [ChromeExtentionPlatform] to use.
  ///
  /// Defaults to [MethodChannelChromeExtention].
  static ChromeExtentionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ChromeExtentionPlatform] when
  /// they register themselves.
  static set instance(ChromeExtentionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
