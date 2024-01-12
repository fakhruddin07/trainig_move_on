// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/material.dart' as _i25;
import 'package:training_moveon/screen/agent_app/splash_screen/splash_screen.dart'
    as _i21;
import 'package:training_moveon/screen/agent_app/wallet_screen/wallet_screen.dart'
    as _i23;
import 'package:training_moveon/screen/auth/sign_in_screen.dart' as _i19;
import 'package:training_moveon/screen/home/home_screen.dart' as _i4;
import 'package:training_moveon/screen/Implementations/bloc_practice/bloc_practice.dart'
    as _i1;
import 'package:training_moveon/screen/Implementations/dart_flutter_dev_tool/flutter_inspector_demo.dart'
    as _i3;
import 'package:training_moveon/screen/Implementations/flutter_hooks/practice_flutter_hooks.dart'
    as _i13;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_callback.dart'
    as _i5;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_context.dart'
    as _i6;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_effect.dart'
    as _i7;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_memoized.dart'
    as _i8;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_state.dart'
    as _i9;
import 'package:training_moveon/screen/Implementations/flutter_hooks/use%20_of_hooks/hooks_use_value_changed.dart'
    as _i10;
import 'package:training_moveon/screen/Implementations/practice_custom_scroll_view/practice_custom_scroll_view.dart'
    as _i12;
import 'package:training_moveon/screen/Implementations/practice_theme/practice_theme.dart'
    as _i14;
import 'package:training_moveon/screen/Implementations/practicr_dio/dio_post_method.dart'
    as _i2;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/sp_stream_json_1.dart'
    as _i22;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_string/sp_and_stream_screen_1.dart'
    as _i17;
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_string/sp_and_stream_screen_2.dart'
    as _i18;
import 'package:training_moveon/screen/Implementations/skeletons_screen/screen_skeleton/product_derails_skeleton.dart'
    as _i15;
import 'package:training_moveon/screen/Implementations/skeletons_screen/screen_skeleton/product_list_skeleton.dart'
    as _i16;
import 'package:training_moveon/screen/Implementations/skeletons_screen/skeletons_screen.dart'
    as _i20;
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_screen.dart'
    as _i11;

abstract class $AppRouter extends _i24.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    BlocPractice.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BlocPractice(),
      );
    },
    DioPostMethod.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DioPostMethod(),
      );
    },
    FlutterInspectorDemo.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FlutterInspectorDemo(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    HooksUseCallBack.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HooksUseCallBack(),
      );
    },
    HooksUseContext.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HooksUseContext(),
      );
    },
    HooksUseEffect.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HooksUseEffect(),
      );
    },
    HooksUseMemoized.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HooksUseMemoized(),
      );
    },
    HooksUseState.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HooksUseState(),
      );
    },
    HooksUseValueChanged.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HooksUseValueChanged(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PaymentScreen(),
      );
    },
    PracticeCustomScrollView.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PracticeCustomScrollView(),
      );
    },
    PracticeFlutterHooks.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PracticeFlutterHooks(),
      );
    },
    PracticeTheme.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.PracticeTheme(),
      );
    },
    ProductDetailSkeletons.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ProductDetailSkeletons(),
      );
    },
    ProductListSkeleton.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.ProductListSkeleton(),
      );
    },
    SPAndStreamRoute1.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SPAndStreamScreen1(),
      );
    },
    SPAndStreamRoute2.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SPAndStreamScreen2(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.SignInScreen(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    SkeletonsRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SkeletonsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SplashScreen(),
      );
    },
    StreamJsonOne.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.StreamJsonOne(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BlocPractice]
class BlocPractice extends _i24.PageRouteInfo<void> {
  const BlocPractice({List<_i24.PageRouteInfo>? children})
      : super(
          BlocPractice.name,
          initialChildren: children,
        );

  static const String name = 'BlocPractice';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DioPostMethod]
class DioPostMethod extends _i24.PageRouteInfo<void> {
  const DioPostMethod({List<_i24.PageRouteInfo>? children})
      : super(
          DioPostMethod.name,
          initialChildren: children,
        );

  static const String name = 'DioPostMethod';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FlutterInspectorDemo]
class FlutterInspectorDemo extends _i24.PageRouteInfo<void> {
  const FlutterInspectorDemo({List<_i24.PageRouteInfo>? children})
      : super(
          FlutterInspectorDemo.name,
          initialChildren: children,
        );

  static const String name = 'FlutterInspectorDemo';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i24.PageRouteInfo<void> {
  const HomeRoute({List<_i24.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HooksUseCallBack]
class HooksUseCallBack extends _i24.PageRouteInfo<void> {
  const HooksUseCallBack({List<_i24.PageRouteInfo>? children})
      : super(
          HooksUseCallBack.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseCallBack';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HooksUseContext]
class HooksUseContext extends _i24.PageRouteInfo<void> {
  const HooksUseContext({List<_i24.PageRouteInfo>? children})
      : super(
          HooksUseContext.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseContext';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HooksUseEffect]
class HooksUseEffect extends _i24.PageRouteInfo<void> {
  const HooksUseEffect({List<_i24.PageRouteInfo>? children})
      : super(
          HooksUseEffect.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseEffect';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HooksUseMemoized]
class HooksUseMemoized extends _i24.PageRouteInfo<void> {
  const HooksUseMemoized({List<_i24.PageRouteInfo>? children})
      : super(
          HooksUseMemoized.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseMemoized';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HooksUseState]
class HooksUseState extends _i24.PageRouteInfo<void> {
  const HooksUseState({List<_i24.PageRouteInfo>? children})
      : super(
          HooksUseState.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseState';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HooksUseValueChanged]
class HooksUseValueChanged extends _i24.PageRouteInfo<void> {
  const HooksUseValueChanged({List<_i24.PageRouteInfo>? children})
      : super(
          HooksUseValueChanged.name,
          initialChildren: children,
        );

  static const String name = 'HooksUseValueChanged';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PaymentScreen]
class PaymentRoute extends _i24.PageRouteInfo<void> {
  const PaymentRoute({List<_i24.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PracticeCustomScrollView]
class PracticeCustomScrollView extends _i24.PageRouteInfo<void> {
  const PracticeCustomScrollView({List<_i24.PageRouteInfo>? children})
      : super(
          PracticeCustomScrollView.name,
          initialChildren: children,
        );

  static const String name = 'PracticeCustomScrollView';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PracticeFlutterHooks]
class PracticeFlutterHooks extends _i24.PageRouteInfo<void> {
  const PracticeFlutterHooks({List<_i24.PageRouteInfo>? children})
      : super(
          PracticeFlutterHooks.name,
          initialChildren: children,
        );

  static const String name = 'PracticeFlutterHooks';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i14.PracticeTheme]
class PracticeTheme extends _i24.PageRouteInfo<void> {
  const PracticeTheme({List<_i24.PageRouteInfo>? children})
      : super(
          PracticeTheme.name,
          initialChildren: children,
        );

  static const String name = 'PracticeTheme';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ProductDetailSkeletons]
class ProductDetailSkeletons extends _i24.PageRouteInfo<void> {
  const ProductDetailSkeletons({List<_i24.PageRouteInfo>? children})
      : super(
          ProductDetailSkeletons.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailSkeletons';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ProductListSkeleton]
class ProductListSkeleton extends _i24.PageRouteInfo<void> {
  const ProductListSkeleton({List<_i24.PageRouteInfo>? children})
      : super(
          ProductListSkeleton.name,
          initialChildren: children,
        );

  static const String name = 'ProductListSkeleton';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SPAndStreamScreen1]
class SPAndStreamRoute1 extends _i24.PageRouteInfo<void> {
  const SPAndStreamRoute1({List<_i24.PageRouteInfo>? children})
      : super(
          SPAndStreamRoute1.name,
          initialChildren: children,
        );

  static const String name = 'SPAndStreamRoute1';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SPAndStreamScreen2]
class SPAndStreamRoute2 extends _i24.PageRouteInfo<void> {
  const SPAndStreamRoute2({List<_i24.PageRouteInfo>? children})
      : super(
          SPAndStreamRoute2.name,
          initialChildren: children,
        );

  static const String name = 'SPAndStreamRoute2';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SignInScreen]
class SignInRoute extends _i24.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i25.Key? key,
    required dynamic Function(bool?) onResult,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i24.PageInfo<SignInRouteArgs> page =
      _i24.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i25.Key? key;

  final dynamic Function(bool?) onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i20.SkeletonsScreen]
class SkeletonsRoute extends _i24.PageRouteInfo<void> {
  const SkeletonsRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SkeletonsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SkeletonsRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SplashScreen]
class SplashRoute extends _i24.PageRouteInfo<void> {
  const SplashRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i22.StreamJsonOne]
class StreamJsonOne extends _i24.PageRouteInfo<void> {
  const StreamJsonOne({List<_i24.PageRouteInfo>? children})
      : super(
          StreamJsonOne.name,
          initialChildren: children,
        );

  static const String name = 'StreamJsonOne';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i23.WalletScreen]
class WalletRoute extends _i24.PageRouteInfo<void> {
  const WalletRoute({List<_i24.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}
