// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i38;
import 'package:flutter/material.dart' as _i39;
import 'package:training_moveon/screen/agent_app/products/products_screen/products_screen.dart'
    as _i26;
import 'package:training_moveon/screen/agent_app/splash_screen/splash_screen.dart'
    as _i34;
import 'package:training_moveon/screen/agent_app/wallet_screen/wallet_screen.dart'
    as _i37;
import 'package:training_moveon/screen/auth/sign_in_screen.dart' as _i31;
import 'package:training_moveon/screen/auth/sign_up_screen.dart' as _i32;
import 'package:training_moveon/screen/home/home_screen.dart' as _i6;
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice.dart'
    as _i1;
import 'package:training_moveon/screen/Implementations/dart_flutter_dev_tool/flutter_inspector_demo.dart'
    as _i5;
import 'package:training_moveon/screen/Implementations/flutter_hooks/practice_flutter_hooks.dart'
    as _i19;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_callback.dart'
    as _i7;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_context.dart'
    as _i8;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_effect.dart'
    as _i9;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_memoized.dart'
    as _i10;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_ref.dart'
    as _i11;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_state.dart'
    as _i12;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_value_changed.dart'
    as _i13;
import 'package:training_moveon/screen/Implementations/practice_custom_scroll_view/practice_custom_scroll_view.dart'
    as _i18;
import 'package:training_moveon/screen/Implementations/practice_shimmer_effect/practice_shimmer_effect.dart'
    as _i20;
import 'package:training_moveon/screen/Implementations/practice_ship/practice_ship_for_me.dart'
    as _i21;
import 'package:training_moveon/screen/Implementations/practice_theme/practice_theme.dart'
    as _i22;
import 'package:training_moveon/screen/Implementations/practicr_dio/dio_get_method.dart'
    as _i3;
import 'package:training_moveon/screen/Implementations/practicr_dio/dio_post_method.dart'
    as _i4;
import 'package:training_moveon/screen/Implementations/prctice_check_list_tile_widget/practice_check_list_tile_widget.dart'
    as _i17;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/sp_stream_json_1.dart'
    as _i35;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/sp_stream_json_2.dart'
    as _i36;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_string/sp_and_stream_screen_1.dart'
    as _i27;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_string/sp_and_stream_screen_2.dart'
    as _i28;
import 'package:training_moveon/screen/Implementations/skeletons_screen/screen_skeleton/product_derails_skeleton.dart'
    as _i23;
import 'package:training_moveon/screen/Implementations/skeletons_screen/screen_skeleton/product_list_skeleton.dart'
    as _i25;
import 'package:training_moveon/screen/Implementations/skeletons_screen/skeletons_screen.dart'
    as _i33;
import 'package:training_moveon/screen/MoveOn%20Screens/checkout_screen/checkout_screen.dart'
    as _i2;
import 'package:training_moveon/screen/MoveOn%20Screens/my_orders_screen/my_orders_screen.dart'
    as _i14;
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_screen.dart'
    as _i16;
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_widget/payment_method.dart'
    as _i15;
import 'package:training_moveon/screen/MoveOn%20Screens/product_details_screen/product_details_screen.dart'
    as _i24;
import 'package:training_moveon/screen/MoveOn%20Screens/ship_for_me_screen/ship_for_me_screen.dart'
    as _i29;
import 'package:training_moveon/screen/MoveOn%20Screens/shopping_cart_screen/shopping_cart_screen.dart'
    as _i30;

abstract class $AppRouter extends _i38.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i38.PageFactory> pagesMap = {
    BlocPractice.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BlocPractice(),
      );
    },
    CheckOutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckOutRouteArgs>(
          orElse: () => const CheckOutRouteArgs());
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CheckOutScreen(
          key: args.key,
          leadingIcon: args.leadingIcon,
        ),
      );
    },
    DioGetMethod.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DioGetMethod(),
      );
    },
    DioPostMethod.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DioPostMethod(),
      );
    },
    FlutterInspectorDemo.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FlutterInspectorDemo(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    HooksUseCallBack.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HooksUseCallBack(),
      );
    },
    HooksUseContext.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HooksUseContext(),
      );
    },
    HooksUseEffect.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HooksUseEffect(),
      );
    },
    HooksUseMemoized.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HooksUseMemoized(),
      );
    },
    HooksUseRef.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.HooksUseRef(),
      );
    },
    HooksUseState.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HooksUseState(),
      );
    },
    HooksUseValueChanged.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.HooksUseValueChanged(),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.MyOrdersScreen(),
      );
    },
    PaymentMethod.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.PaymentMethod(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.PaymentScreen(),
      );
    },
    PracticeCheckListTileWidget.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.PracticeCheckListTileWidget(),
      );
    },
    PracticeCustomScrollView.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.PracticeCustomScrollView(),
      );
    },
    PracticeFlutterHooks.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.PracticeFlutterHooks(),
      );
    },
    PracticeShimmerEffect.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.PracticeShimmerEffect(),
      );
    },
    PracticeShipForMe.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.PracticeShipForMe(),
      );
    },
    PracticeTheme.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.PracticeTheme(),
      );
    },
    ProductDetailSkeletons.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ProductDetailSkeletons(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.ProductDetailsScreen(),
      );
    },
    ProductListSkeleton.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.ProductListSkeleton(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.ProductsScreen(),
      );
    },
    SPAndStreamRoute1.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SPAndStreamScreen1(),
      );
    },
    SPAndStreamRoute2.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.SPAndStreamScreen2(),
      );
    },
    ShipForMeRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.ShipForMeScreen(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.ShoppingCartScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.SignInScreen(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.SignUpScreen(),
      );
    },
    SkeletonsRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.SkeletonsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.SplashScreen(),
      );
    },
    StreamJsonOne.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.StreamJsonOne(),
      );
    },
    StreamJsonTwo.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.StreamJsonTwo(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i38.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i37.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BlocPractice]
class BlocPractice extends _i38.PageRouteInfo<void> {
  const BlocPractice({List<_i38.PageRouteInfo>? children})
      : super(
          BlocPractice.name,
          initialChildren: children,
        );

  static const String name = 'BlocPractice';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CheckOutScreen]
class CheckOutRoute extends _i38.PageRouteInfo<CheckOutRouteArgs> {
  CheckOutRoute({
    _i39.Key? key,
    _i39.IconData? leadingIcon,
    List<_i38.PageRouteInfo>? children,
  }) : super(
          CheckOutRoute.name,
          args: CheckOutRouteArgs(
            key: key,
            leadingIcon: leadingIcon,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckOutRoute';

  static const _i38.PageInfo<CheckOutRouteArgs> page =
      _i38.PageInfo<CheckOutRouteArgs>(name);
}

class CheckOutRouteArgs {
  const CheckOutRouteArgs({
    this.key,
    this.leadingIcon,
  });

  final _i39.Key? key;

  final _i39.IconData? leadingIcon;

  @override
  String toString() {
    return 'CheckOutRouteArgs{key: $key, leadingIcon: $leadingIcon}';
  }
}

/// generated route for
/// [_i3.DioGetMethod]
class DioGetMethod extends _i38.PageRouteInfo<void> {
  const DioGetMethod({List<_i38.PageRouteInfo>? children})
      : super(
          DioGetMethod.name,
          initialChildren: children,
        );

  static const String name = 'DioGetMethod';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DioPostMethod]
class DioPostMethod extends _i38.PageRouteInfo<void> {
  const DioPostMethod({List<_i38.PageRouteInfo>? children})
      : super(
          DioPostMethod.name,
          initialChildren: children,
        );

  static const String name = 'DioPostMethod';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FlutterInspectorDemo]
class FlutterInspectorDemo extends _i38.PageRouteInfo<void> {
  const FlutterInspectorDemo({List<_i38.PageRouteInfo>? children})
      : super(
          FlutterInspectorDemo.name,
          initialChildren: children,
        );

  static const String name = 'FlutterInspectorDemo';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i38.PageRouteInfo<void> {
  const HomeRoute({List<_i38.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HooksUseCallBack]
class HooksUseCallBack extends _i38.PageRouteInfo<void> {
  const HooksUseCallBack({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseCallBack.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseCallBack';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HooksUseContext]
class HooksUseContext extends _i38.PageRouteInfo<void> {
  const HooksUseContext({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseContext.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseContext';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HooksUseEffect]
class HooksUseEffect extends _i38.PageRouteInfo<void> {
  const HooksUseEffect({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseEffect.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseEffect';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HooksUseMemoized]
class HooksUseMemoized extends _i38.PageRouteInfo<void> {
  const HooksUseMemoized({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseMemoized.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseMemoized';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i11.HooksUseRef]
class HooksUseRef extends _i38.PageRouteInfo<void> {
  const HooksUseRef({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseRef.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseRef';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HooksUseState]
class HooksUseState extends _i38.PageRouteInfo<void> {
  const HooksUseState({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseState.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseState';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i13.HooksUseValueChanged]
class HooksUseValueChanged extends _i38.PageRouteInfo<void> {
  const HooksUseValueChanged({List<_i38.PageRouteInfo>? children})
      : super(
          HooksUseValueChanged.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseValueChanged';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MyOrdersScreen]
class MyOrdersRoute extends _i38.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i38.PageRouteInfo>? children})
      : super(
          MyOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i15.PaymentMethod]
class PaymentMethod extends _i38.PageRouteInfo<void> {
  const PaymentMethod({List<_i38.PageRouteInfo>? children})
      : super(
          PaymentMethod.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethod';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i16.PaymentScreen]
class PaymentRoute extends _i38.PageRouteInfo<void> {
  const PaymentRoute({List<_i38.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i17.PracticeCheckListTileWidget]
class PracticeCheckListTileWidget extends _i38.PageRouteInfo<void> {
  const PracticeCheckListTileWidget({List<_i38.PageRouteInfo>? children})
      : super(
          PracticeCheckListTileWidget.name,
          initialChildren: children,
        );

  static const String name = 'PracticeCheckListTileWidget';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i18.PracticeCustomScrollView]
class PracticeCustomScrollView extends _i38.PageRouteInfo<void> {
  const PracticeCustomScrollView({List<_i38.PageRouteInfo>? children})
      : super(
          PracticeCustomScrollView.name,
          initialChildren: children,
        );

  static const String name = 'PracticeCustomScrollView';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i19.PracticeFlutterHooks]
class PracticeFlutterHooks extends _i38.PageRouteInfo<void> {
  const PracticeFlutterHooks({List<_i38.PageRouteInfo>? children})
      : super(
          PracticeFlutterHooks.name,
          initialChildren: children,
        );

  static const String name = 'PracticeFlutterHooks';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i20.PracticeShimmerEffect]
class PracticeShimmerEffect extends _i38.PageRouteInfo<void> {
  const PracticeShimmerEffect({List<_i38.PageRouteInfo>? children})
      : super(
          PracticeShimmerEffect.name,
          initialChildren: children,
        );

  static const String name = 'PracticeShimmerEffect';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i21.PracticeShipForMe]
class PracticeShipForMe extends _i38.PageRouteInfo<void> {
  const PracticeShipForMe({List<_i38.PageRouteInfo>? children})
      : super(
          PracticeShipForMe.name,
          initialChildren: children,
        );

  static const String name = 'PracticeShipForMe';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i22.PracticeTheme]
class PracticeTheme extends _i38.PageRouteInfo<void> {
  const PracticeTheme({List<_i38.PageRouteInfo>? children})
      : super(
          PracticeTheme.name,
          initialChildren: children,
        );

  static const String name = 'PracticeTheme';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ProductDetailSkeletons]
class ProductDetailSkeletons extends _i38.PageRouteInfo<void> {
  const ProductDetailSkeletons({List<_i38.PageRouteInfo>? children})
      : super(
          ProductDetailSkeletons.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailSkeletons';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ProductDetailsScreen]
class ProductDetailsRoute extends _i38.PageRouteInfo<void> {
  const ProductDetailsRoute({List<_i38.PageRouteInfo>? children})
      : super(
          ProductDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i25.ProductListSkeleton]
class ProductListSkeleton extends _i38.PageRouteInfo<void> {
  const ProductListSkeleton({List<_i38.PageRouteInfo>? children})
      : super(
          ProductListSkeleton.name,
          initialChildren: children,
        );

  static const String name = 'ProductListSkeleton';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i26.ProductsScreen]
class ProductsRoute extends _i38.PageRouteInfo<void> {
  const ProductsRoute({List<_i38.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i27.SPAndStreamScreen1]
class SPAndStreamRoute1 extends _i38.PageRouteInfo<void> {
  const SPAndStreamRoute1({List<_i38.PageRouteInfo>? children})
      : super(
          SPAndStreamRoute1.name,
          initialChildren: children,
        );

  static const String name = 'SPAndStreamRoute1';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i28.SPAndStreamScreen2]
class SPAndStreamRoute2 extends _i38.PageRouteInfo<void> {
  const SPAndStreamRoute2({List<_i38.PageRouteInfo>? children})
      : super(
          SPAndStreamRoute2.name,
          initialChildren: children,
        );

  static const String name = 'SPAndStreamRoute2';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ShipForMeScreen]
class ShipForMeRoute extends _i38.PageRouteInfo<void> {
  const ShipForMeRoute({List<_i38.PageRouteInfo>? children})
      : super(
          ShipForMeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShipForMeRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i30.ShoppingCartScreen]
class ShoppingCartRoute extends _i38.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i38.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i31.SignInScreen]
class SignInRoute extends _i38.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i39.Key? key,
    required dynamic Function(bool?) onResult,
    List<_i38.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i38.PageInfo<SignInRouteArgs> page =
      _i38.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i39.Key? key;

  final dynamic Function(bool?) onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i32.SignUpScreen]
class SignUpRoute extends _i38.PageRouteInfo<void> {
  const SignUpRoute({List<_i38.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i33.SkeletonsScreen]
class SkeletonsRoute extends _i38.PageRouteInfo<void> {
  const SkeletonsRoute({List<_i38.PageRouteInfo>? children})
      : super(
          SkeletonsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SkeletonsRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i34.SplashScreen]
class SplashRoute extends _i38.PageRouteInfo<void> {
  const SplashRoute({List<_i38.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i35.StreamJsonOne]
class StreamJsonOne extends _i38.PageRouteInfo<void> {
  const StreamJsonOne({List<_i38.PageRouteInfo>? children})
      : super(
          StreamJsonOne.name,
          initialChildren: children,
        );

  static const String name = 'StreamJsonOne';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i36.StreamJsonTwo]
class StreamJsonTwo extends _i38.PageRouteInfo<void> {
  const StreamJsonTwo({List<_i38.PageRouteInfo>? children})
      : super(
          StreamJsonTwo.name,
          initialChildren: children,
        );

  static const String name = 'StreamJsonTwo';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}

/// generated route for
/// [_i37.WalletScreen]
class WalletRoute extends _i38.PageRouteInfo<void> {
  const WalletRoute({List<_i38.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i38.PageInfo<void> page = _i38.PageInfo<void>(name);
}
