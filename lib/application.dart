import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_cart/controller/user_auth_controller.dart';
import 'package:order_cart/pages/login_page.dart';

import 'pages/home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      unknownRoute: GetPage(name: '/not-found', page: () => UnknownRoutePage()),
      getPages: _buildPages,
      home: GetBuilder<UserAuthController>(
        init: UserAuthController(),
        builder: (UserAuthController controller) {
          if (controller.currentUser != null) {
            return HomePage();
          }

          return LoginPage();
        }
      ),
    );
  }

  List<GetPage<dynamic>>? get _buildPages {
    return [
      GetPage(name: '/home', page: () => HomePage(), transition: Transition.fade),
      GetPage(name: '/login', page: () => LoginPage(), transition: Transition.fadeIn),
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
