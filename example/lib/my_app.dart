import 'package:example/detail_page.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sint/sint.dart';
import 'package:sint_admob/sint_admob.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SintApp(
      design: SintDesign.material,
      title: 'Admob Example',
      initialRoute: '/',
      sintPages: [
        SintPage(name: '/', page: () => const HomePage()),
        SintPage(name: '/detail', page: () => const DetailPage()),
      ],
      builder: (context, child) {
        return AdaptiveAdLoader(preloadAllBanners: false, child: child);
      },
    );
  }
}
