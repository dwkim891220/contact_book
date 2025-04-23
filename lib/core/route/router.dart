import 'package:contact_book/core/route/routes.dart';
import 'package:contact_book/data/repositories/contact_repository.dart';
import 'package:contact_book/ui/add/add_contact_screen.dart';
import 'package:contact_book/ui/add/add_contact_viewmodel.dart';
import 'package:contact_book/ui/detail/detail_contact_screen.dart';
import 'package:contact_book/ui/splash/splash_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../ui/home/home_screen.dart';
import '../../ui/home/home_viewmodel.dart';
import '../../ui/splash/splash_screen.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.splash,
  debugLogDiagnostics: true,

  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) {
        final viewModel = SplashViewModel();
        return SplashScreen(viewModel: viewModel);
      },
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        final viewModel = HomeViewModel(
          repository: GetIt.instance.get<ContactRepository>(),
        );
        return HomeScreen(viewModel: viewModel);
      },
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) {
            final id = int.parse(state.pathParameters['id']!);
            return DetailContactScreen(); //TODO
          },
        ),
        GoRoute(
          path: Routes.add,
          builder: (context, state) {
            final viewModel = AddContactViewmodel();
            return AddContactScreen(viewModel: viewModel);
          },
        ),
      ],
    ),
  ],
);
