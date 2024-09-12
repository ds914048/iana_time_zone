import 'dart:io';
import 'package:flutter/services.dart';

class IanaTimeZone {
  static const MethodChannel _channel = MethodChannel('iana_time_zone');

  static Future<String?> get getIanaTimeZone async  {
    if(Platform.isAndroid||Platform.isIOS) {
      final String timeZoneId = await _channel.invokeMethod('getIanaTimeZone');
      return timeZoneId;
    }
    return null;
  }

}
