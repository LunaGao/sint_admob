import 'package:example/app_ad_units.dart';
import 'package:flutter/material.dart';
import 'package:sint/sint.dart';
import 'package:sint_admob/sint_admob.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Admob Example"),
      ),
      body: Column(
        children: [
          AppBannerAd(AppAdUnits.homeBanner),
          const Text('this is show ad'),
          FilledButton(
            onPressed: () {
              Sint.toNamed('/detail');
            },
            child: const Text('go to detail'),
          ),
        ],
      ),
    );
  }
}
