import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/dependencies.dart';

enum SplashState { initial, loading, success, error }

final splashViewModelProvider =
    StateNotifierProvider<SplashViewModel, SplashState>(
      (ref) => SplashViewModel(),
    );

class SplashViewModel extends StateNotifier<SplashState> {
  SplashViewModel() : super(SplashState.initial) {
    _init();
  }

  Future<void> _init() async {
    await initializeDependencies();
  }
}
