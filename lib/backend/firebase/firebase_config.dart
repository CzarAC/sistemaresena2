import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDYwBdd8E8r_uS9djdkRGW6zJuG2XldHbY",
            authDomain: "ejemplo1-88f97.firebaseapp.com",
            projectId: "ejemplo1-88f97",
            storageBucket: "ejemplo1-88f97.firebasestorage.app",
            messagingSenderId: "672645553095",
            appId: "1:672645553095:web:a8f2dcd224a4d205da97e2"));
  } else {
    await Firebase.initializeApp();
  }
}
