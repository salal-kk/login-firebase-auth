// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAKaNNKt_KcYoQvPvmSDtwwBwMTJenJu9s',
    appId: '1:967601442387:web:5f8023ad92724d3ea5c0a6',
    messagingSenderId: '967601442387',
    projectId: 'login-firebase-salal',
    authDomain: 'login-firebase-salal.firebaseapp.com',
    storageBucket: 'login-firebase-salal.appspot.com',
    measurementId: 'G-ZM4TKENXE3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvnSu_xZkalsiy6SveRiWLBNYDE5mkeHQ',
    appId: '1:967601442387:android:0067cb02e6d02877a5c0a6',
    messagingSenderId: '967601442387',
    projectId: 'login-firebase-salal',
    storageBucket: 'login-firebase-salal.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAX4e8OSDXfnO4dOg9yeKtJq5c57AKntNQ',
    appId: '1:967601442387:ios:b1c211deec5af1c5a5c0a6',
    messagingSenderId: '967601442387',
    projectId: 'login-firebase-salal',
    storageBucket: 'login-firebase-salal.appspot.com',
    iosClientId:
        '967601442387-40a0uvksl6cfqb42r38s9lfmatnisj9s.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFirebase1st',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAX4e8OSDXfnO4dOg9yeKtJq5c57AKntNQ',
    appId: '1:967601442387:ios:b1c211deec5af1c5a5c0a6',
    messagingSenderId: '967601442387',
    projectId: 'login-firebase-salal',
    storageBucket: 'login-firebase-salal.appspot.com',
    iosClientId:
        '967601442387-40a0uvksl6cfqb42r38s9lfmatnisj9s.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFirebase1st',
  );
}