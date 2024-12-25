import 'package:flutter/material.dart';
import 'package:order_cart/controller/user_auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage("https://i.pinimg.com/originals/b6/1a/4d/b61a4d35d350173b05f458b73c2f0997.gif"),
            repeat: ImageRepeat.repeat,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: UserAuthController.to.signIn,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon(Icons.login, size: 50,),
                    // SizedBox(width: 20,),
                    // Text("Sign-in with Google!")
                    Image(
                      image: AssetImage("images/sign_in_google.png"),
                      fit: BoxFit.contain,
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
