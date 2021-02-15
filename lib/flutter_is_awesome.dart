import 'dart:async';

import 'package:flutter/services.dart';

class FlutterIsAwesome {
  static const MethodChannel _channel =
      const MethodChannel('flutter_is_awesome');

  static Future<String> getAContact() async {
    final String contact = await _channel.invokeMethod('getAContact');
    return contact;
  }
}
