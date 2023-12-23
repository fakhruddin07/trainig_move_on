import 'package:training_moveon/screen/home/home_screen.dart';
import 'package:training_moveon/screen/routes/routes_name.dart';

abstract class RoutesPage{
  RoutesPage._();
  static goToHomeScreen() => RoutesName.home;

  static final route = {
    goToHomeScreen() : (context)  => const HomeScreen(),
  };
}