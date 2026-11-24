import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AdmobUnitId {
  late String _androidUnitId;
  late String _iosUnitId;

  AdmobUnitId({required String androidUnitId, required String iosUnitId}) {
    _androidUnitId = androidUnitId;
    _iosUnitId = iosUnitId;
  }

  String get productionUnitId {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return _iosUnitId;
    }
    if (defaultTargetPlatform == TargetPlatform.android) {
      return _androidUnitId;
    }
    throw PlatformException(code: 'platform_not_supported');
  }
}
