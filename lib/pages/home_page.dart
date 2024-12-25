import 'package:flutter/material.dart';
import 'package:order_cart/controller/user_auth_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        title: Text("Xin chào, ${UserAuthController.to.currentUser?.displayName ?? ""}"),
        centerTitle: true,
        actions: [
          SizedBox(width: 20,),
          CircleAvatar(
            radius: 20,
            child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network(UserAuthController.to.currentUser?.photoURL ?? "", fit: BoxFit.fill ),),
          ),
          SizedBox(width: 6,),
          IconButton(
            icon: Icon(Icons.logout, size: 25),
            onPressed: UserAuthController.to.signOut,
          ),
          SizedBox(width: 20,)
        ],
      ),
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
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("Tạo nhóm đặt chung"),
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
