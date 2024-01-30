import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8xS8ym11v5BpaA7ZMTsIWxClBlo8cUc8",
            authDomain: "ffsia-22897.firebaseapp.com",
            projectId: "ffsia-22897",
            storageBucket: "ffsia-22897.appspot.com",
            messagingSenderId: "984471953116",
            appId: "1:984471953116:web:d537d06f99ecb426cf5e19",
            measurementId: "G-FCTC9307YJ"));
  } else {
    await Firebase.initializeApp();
  }
}
