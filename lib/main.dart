import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'utils/check_status.dart';
import '../theme/theme.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final initialization =
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            debugPrint('Error: Something Went Wrong ${snapshot.error}');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shared Preferences Package',
            theme: lightMode,
            home: const CheckStatus(),
          );
        },
      );
}
