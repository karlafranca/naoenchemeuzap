import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCCvcPqrFOA5vepeEo47IM0lp2DXc88F0k",
            authDomain: "quick-zap-wvxy72.firebaseapp.com",
            projectId: "quick-zap-wvxy72",
            storageBucket: "quick-zap-wvxy72.appspot.com",
            messagingSenderId: "978112604612",
            appId: "1:978112604612:web:acf715dba9c1876d09dc91"));
  } else {
    await Firebase.initializeApp();
  }
}
