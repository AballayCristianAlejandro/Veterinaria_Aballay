import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBxIr_rLcRlHB1UiCAvusgqEo8vxvg4Yks",
            authDomain: "veterinaria-aballay.firebaseapp.com",
            projectId: "veterinaria-aballay",
            storageBucket: "veterinaria-aballay.appspot.com",
            messagingSenderId: "195453434753",
            appId: "1:195453434753:web:b420da1d6b372c22fe4680"));
  } else {
    await Firebase.initializeApp();
  }
}
