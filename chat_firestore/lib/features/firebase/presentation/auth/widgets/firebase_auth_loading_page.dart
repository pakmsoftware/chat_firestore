import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Initial loading page
@RoutePage()
class FirebaseAuthLoadingPage extends StatelessWidget {
  const FirebaseAuthLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
