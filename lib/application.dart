import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      getPages: _buildPages,
    );
  }

  List<GetPage<dynamic>>? get _buildPages {
    return [
      GetPage(name: '/', page: () => HomePage(), transition: Transition.fade),
      GetPage(name: '/order', page: () => OrderingPage(), transition: Transition.fade),
    ];
  }
}

class OrderingPage extends StatelessWidget {
  const OrderingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100, height: 100,
      color: Colors.amber,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100, height: 100,
      color: Colors.red,
    );
  }
}

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100, height: 100,
      color: Colors.red,
    );
  }
}
