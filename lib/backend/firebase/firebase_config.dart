import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDUxMVcS7mEJoEKGElW3sJ_jmYHFHb1Tf8",
            authDomain: "auth2-ermue6.firebaseapp.com",
            projectId: "auth2-ermue6",
            storageBucket: "auth2-ermue6.firebasestorage.app",
            messagingSenderId: "726172160789",
            appId: "1:726172160789:web:ba3bf57771b5f1e7314f1c"));
  } else {
    await Firebase.initializeApp();
  }
}
