import 'package:training_moveon/screen/home/home_screen.dart';
import 'package:training_moveon/screen/routes/routes_name.dart';

abstract class RoutesPage{
  static goToHomeScreen() => PathName.home;

  static final route = {
    goToHomeScreen(): ()  => const HomeScreen(),
  };
}