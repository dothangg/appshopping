// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCA7Syv-QOL4UgYSVXUvhZbVoDe8RN4vrk',
    appId: '1:386005586521:web:6059665cb691caf5f09748',
    messagingSenderId: '386005586521',
    projectId: 'thang123-b3804',
    authDomain: 'thang123-b3804.firebaseapp.com',
    databaseURL: 'https://thang123-b3804-default-rtdb.firebaseio.com',
    storageBucket: 'thang123-b3804.appspot.com',
    measurementId: 'G-WYZ7Z9BWTM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnC8O31ixn7_CXW2_GMHWMDqBWtPF1XpE',
    appId: '1:386005586521:android:de0dc8c794c163cff09748',
    messagingSenderId: '386005586521',
    projectId: 'thang123-b3804',
    databaseURL: 'https://thang123-b3804-default-rtdb.firebaseio.com',
    storageBucket: 'thang123-b3804.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeT-nPg4ogjb0XGkXb_0f6dKKkjuuOBBA',
    appId: '1:386005586521:ios:27b6776809831e2bf09748',
    messagingSenderId: '386005586521',
    projectId: 'thang123-b3804',
    databaseURL: 'https://thang123-b3804-default-rtdb.firebaseio.com',
    storageBucket: 'thang123-b3804.appspot.com',
    iosBundleId: 'com.example.shoppingappp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAeT-nPg4ogjb0XGkXb_0f6dKKkjuuOBBA',
    appId: '1:386005586521:ios:27b6776809831e2bf09748',
    messagingSenderId: '386005586521',
    projectId: 'thang123-b3804',
    databaseURL: 'https://thang123-b3804-default-rtdb.firebaseio.com',
    storageBucket: 'thang123-b3804.appspot.com',
    iosBundleId: 'com.example.shoppingappp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCA7Syv-QOL4UgYSVXUvhZbVoDe8RN4vrk',
    appId: '1:386005586521:web:6b91e88f5cb6d823f09748',
    messagingSenderId: '386005586521',
    projectId: 'thang123-b3804',
    authDomain: 'thang123-b3804.firebaseapp.com',
    databaseURL: 'https://thang123-b3804-default-rtdb.firebaseio.com',
    storageBucket: 'thang123-b3804.appspot.com',
    measurementId: 'G-5B7XYZQV97',
  );
}
