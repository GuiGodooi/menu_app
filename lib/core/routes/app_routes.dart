import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/products/:id',
      // builder: (context, state) => ProductPage(id: state.params['id']),
    ),
  ],
);
