import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CircularCountryFlags extends StatelessWidget {
  final String countryCode;
  final double? width;
  final double? height;
  static const MethodChannel _channel = const MethodChannel('circular_country_flags');

  CircularCountryFlags({Key? key, required this.countryCode, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        'flags/${this.countryCode.trim().toLowerCase()}.png',
        package: 'circular_country_flags',
      ),
      width: this.width,
      height: this.height,
    );
  }

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
