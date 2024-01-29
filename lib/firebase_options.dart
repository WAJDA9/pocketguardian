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
    apiKey: 'AIzaSyAxb6-pVi1yk5T_cIOiFDfXGTrE-9FMPU4',
    appId: '1:368033471374:web:73e21b8b736c84a0c2e2df',
    messagingSenderId: '368033471374',
    projectId: 'pocktguardian',
    authDomain: 'pocktguardian.firebaseapp.com',
    storageBucket: 'pocktguardian.appspot.com',
    measurementId: 'G-D0TEYF852R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUKsBP8HQmaLjnzmgoZ1nZDBB-idWEpVg',
    appId: '1:368033471374:android:51abdcbbc3fc4144c2e2df',
    messagingSenderId: '368033471374',
    projectId: 'pocktguardian',
    storageBucket: 'pocktguardian.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCS5A_dwhMsxXFpqvRm_MCac7fYffKmp0I',
    appId: '1:368033471374:ios:d40d195357bc453dc2e2df',
    messagingSenderId: '368033471374',
    projectId: 'pocktguardian',
    storageBucket: 'pocktguardian.appspot.com',
    iosBundleId: 'com.example.pocketguardianapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCS5A_dwhMsxXFpqvRm_MCac7fYffKmp0I',
    appId: '1:368033471374:ios:d40d195357bc453dc2e2df',
    messagingSenderId: '368033471374',
    projectId: 'pocktguardian',
    storageBucket: 'pocktguardian.appspot.com',
    iosBundleId: 'com.example.pocketguardianapp',
  );
}
