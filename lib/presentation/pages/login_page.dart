import 'package:cached_network_image/cached_network_image.dart';
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
          CachedNetworkImage(
            imageUrl: "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExZTRvZ3F0NGR5Nmp5cnZzNzVhOTJqc2drNjRmNmpqbzJwc3ZtamJ2eSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/e3CNBJ8esWy9Jt0wVL/giphy.gif",
            fit: BoxFit.cover,
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
                    Image(
                      image: AssetImage("images/sign_in_google.jpg"),
                      fit: BoxFit.contain,
                      height: 50,
                    ),
                    CachedNetworkImage(
                      imageUrl: "https://png.pngtree.com/png-clipart/20230804/original/pngtree-vector-login-icon-login-design-shadow-vector-picture-image_9501563.png",
                      fit: BoxFit.contain,
                    ),
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
