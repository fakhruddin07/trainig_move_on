import 'package:auto_route/auto_route.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(
      SignInRoute(
        onResult: (result) {
          if (result == true) {
            resolver.next(true);
            router.removeLast();
          }
        },
      ),
    );
  }
}
