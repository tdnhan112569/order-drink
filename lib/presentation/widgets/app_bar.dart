import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/user_auth_controller.dart';

class AppBarCommon extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCommon({super.key});

  @override
  State<AppBarCommon> createState() => _AppBarCommonState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarCommonState extends State<AppBarCommon> {
  bool isLightTheme = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLightTheme = !Get.isDarkMode;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
        leadingWidth: 100,
        title: Text("Xin chào, ${UserAuthController.to.currentUser?.displayName ?? ""}"),
        centerTitle: true,
        actions: [
          SizedBox(width: 20,),
          CircleAvatar(
            radius: 20,
            child: ClipRRect(borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                    imageUrl: UserAuthController.to.currentUser?.photoURL ??
                        "")),
          ),
          SizedBox(width: 6,),
          Switch(value: isLightTheme, onChanged: (value) {
            Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
            setState(() {
              isLightTheme = !Get.isDarkMode;
            });
          }),
          SizedBox(width: 6,),
          IconButton(
            icon: Icon(Icons.logout, size: 25),
            onPressed: UserAuthController.to.signOut,
          ),
          SizedBox(width: 20,)
        ]);
  }
}