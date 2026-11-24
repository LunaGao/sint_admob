import 'package:example/app_ad_units.dart';
import 'package:example/my_app.dart';
import 'package:flutter/material.dart';
import 'package:sint/sint.dart';

// import sint admob
import 'package:sint_admob/sint_admob.dart';

void main() async {
  // ensure initialized
  WidgetsFlutterBinding.ensureInitialized();
  // init admob service
  await Sint.putAsync(
    () => AdmobService().init(
      adUnitIds: AppAdUnits.adUnits,
      // using for production
      appOpenAdUnitId: AdmobUnitId(
        androidUnitId: 'ca-app-pub-3940256099942544/9257395921',
        iosUnitId: 'ca-app-pub-3940256099942544/5575463023',
      ),
      bannerSizePolicy: AdmobBannerSizePolicy.standardAdaptive,
      onDiagnostic: (event) => debugPrint('Example $event'),
    ),
  );

  runApp(const MyApp());
}
