import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyASBOiqWYBpuB5K3-_01xuP1aukhvrm3QE",
      authDomain: "order-drink-7664e.firebaseapp.com",
      projectId: "order-drink-7664e",
      storageBucket: "order-drink-7664e.firebasestorage.app",
      messagingSenderId: "612885850231",
      appId: "1:612885850231:web:a887b0c6d5e62ae7527e72",
      measurementId: "G-DYE878FG7Z"
    )
  );

  runApp(const Application());
}

