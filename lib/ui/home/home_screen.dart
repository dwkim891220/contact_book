import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/route/routes.dart';
import 'home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go(Routes.add),
        label: const Text('Add Contact'),
        icon: const Icon(Icons.add_location_outlined),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return;
          },
        ),
      ),
    );
  }
}
