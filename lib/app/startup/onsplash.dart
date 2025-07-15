import 'dart:async';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      context.go(AppRoutes.welcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo-app.png',
          width: MediaQuery.of(context).size.width * 0.54,
          height: MediaQuery.of(context).size.height * 0.54,
        ),
      ),
    );
  }
}
