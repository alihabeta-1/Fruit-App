import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/helper_functions/on_generate_routes.dart';
import 'package:fruithub/core/services/get_it_service.dart';
import 'package:fruithub/core/services/shared_preferences_singleton.dart';
import 'package:fruithub/features/Splash/presentation/views/splash_view.dart';
import 'package:fruithub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Prefs.init();

  setupGetit();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
