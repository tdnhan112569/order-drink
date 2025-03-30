import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_cart/presentation/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarCommon(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple,
              child: SizedBox.expand(
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  alignment: FractionalOffset.center,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: <Widget>[
                      Card(
                        elevation: 8, // Controls the shadow depth
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadowColor: Colors.black54,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed("/order");
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[100],
                            child: const Text("Tạo nhóm đặt chung"),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Tìm nhóm đặt'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
