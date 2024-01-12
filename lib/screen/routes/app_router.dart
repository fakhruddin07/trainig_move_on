import 'package:auto_route/auto_route.dart';
import 'package:training_moveon/screen/routes/auth_guard/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, /*initial: true*/),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: HomeRoute.page, /*initial: true,*/ /*guards: [AuthGuard()]*/),
    AutoRoute(page: SkeletonsRoute.page, initial: true),
    AutoRoute(page: StreamJsonOne.page),
    AutoRoute(page: StreamJsonTwo.page),
    AutoRoute(page: SPAndStreamRoute1.page),
    AutoRoute(page: SPAndStreamRoute2.page),
    AutoRoute(page: PracticeShimmerEffect.page),
    AutoRoute(page: PracticeCustomScrollView.page),
    AutoRoute(page: FlutterInspectorDemo.page),
    AutoRoute(page: PracticeCheckListTileWidget.page),
    AutoRoute(page: ProductDetailsRoute.page),
    AutoRoute(page: ShipForMeRoute.page),
    AutoRoute(page: ProductsRoute.page),
    AutoRoute(page: DioGetMethod.page),
    AutoRoute(page: DioPostMethod.page),
    AutoRoute(page: PracticeTheme.page),
    AutoRoute(page: MyOrdersRoute.page),
    AutoRoute(page: ShoppingCartRoute.page),
    AutoRoute(page: PracticeFlutterHooks.page),
    AutoRoute(page: HooksUseState.page),
    AutoRoute(page: HooksUseEffect.page,),
    AutoRoute(page: HooksUseMemoized.page,),
    AutoRoute(page: HooksUseRef.page,),
    AutoRoute(page: HooksUseCallBack.page,),
    AutoRoute(page: HooksUseContext.page,),
    AutoRoute(page: HooksUseValueChanged.page,),
    AutoRoute(page: ProductDetailSkeletons.page),
    AutoRoute(page: ProductListSkeleton.page),
    AutoRoute(page: PaymentRoute.page),
    AutoRoute(page: PaymentMethod.page),
    AutoRoute(page: CheckOutRoute.page),
    AutoRoute(page: BlocPractice.page),
    AutoRoute(page: PracticeShipForMe.page),
    AutoRoute(page: WalletRoute.page),
  ];
}