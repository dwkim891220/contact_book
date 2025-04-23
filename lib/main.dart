import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/di/dependencies.dart';
import 'core/route/router.dart';

void main() async {
  await initializeDependencies();
  runApp(ProviderScope(child: ContactBookApp()));
}

class ContactBookApp extends StatelessWidget {
  const ContactBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router());
  }
}
