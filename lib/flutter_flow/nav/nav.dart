import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : SignInPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : SignInPageWidget(),
        ),
        FFRoute(
          name: SignUpPageWidget.routeName,
          path: SignUpPageWidget.routePath,
          builder: (context, params) => SignUpPageWidget(
            emailAccount: params.getParam(
              'emailAccount',
              ParamType.String,
            ),
            companyId: params.getParam(
              'companyId',
              ParamType.String,
            ),
            isAdmin: params.getParam(
              'isAdmin',
              ParamType.bool,
            ),
            isEmployee: params.getParam(
              'isEmployee',
              ParamType.bool,
            ),
            isUser: params.getParam(
              'isUser',
              ParamType.bool,
            ),
            isMasterAdmin: params.getParam(
              'isMasterAdmin',
              ParamType.bool,
            ),
            hasScannerAccess: params.getParam(
              'hasScannerAccess',
              ParamType.bool,
            ),
            hasWebAdminAccess: params.getParam(
              'hasWebAdminAccess',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: UserHomePageWidget.routeName,
          path: UserHomePageWidget.routePath,
          builder: (context, params) => UserHomePageWidget(),
        ),
        FFRoute(
          name: SignInPageWidget.routeName,
          path: SignInPageWidget.routePath,
          builder: (context, params) => SignInPageWidget(),
        ),
        FFRoute(
          name: MemberSettingsPageWidget.routeName,
          path: MemberSettingsPageWidget.routePath,
          builder: (context, params) => MemberSettingsPageWidget(),
        ),
        FFRoute(
          name: DashboardResponsiveAdminPanelWidget.routeName,
          path: DashboardResponsiveAdminPanelWidget.routePath,
          builder: (context, params) => DashboardResponsiveAdminPanelWidget(),
        ),
        FFRoute(
          name: NewUserAdminPanelWidget.routeName,
          path: NewUserAdminPanelWidget.routePath,
          builder: (context, params) => NewUserAdminPanelWidget(),
        ),
        FFRoute(
          name: EmployeeHomePageWidget.routeName,
          path: EmployeeHomePageWidget.routePath,
          builder: (context, params) => EmployeeHomePageWidget(),
        ),
        FFRoute(
          name: MasterAdminHomePageWidget.routeName,
          path: MasterAdminHomePageWidget.routePath,
          builder: (context, params) => MasterAdminHomePageWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: SignUpNewPageWidget.routeName,
          path: SignUpNewPageWidget.routePath,
          builder: (context, params) => SignUpNewPageWidget(),
        ),
        FFRoute(
          name: VerificationCodeWidget.routeName,
          path: VerificationCodeWidget.routePath,
          builder: (context, params) => VerificationCodeWidget(
            emailAccount: params.getParam(
              'emailAccount',
              ParamType.String,
            ),
            companyId: params.getParam(
              'companyId',
              ParamType.String,
            ),
            isAdmin: params.getParam(
              'isAdmin',
              ParamType.bool,
            ),
            isUser: params.getParam(
              'isUser',
              ParamType.bool,
            ),
            isEmployee: params.getParam(
              'isEmployee',
              ParamType.bool,
            ),
            isMasterAdmin: params.getParam(
              'isMasterAdmin',
              ParamType.bool,
            ),
            hasScannerAccess: params.getParam(
              'hasScannerAccess',
              ParamType.bool,
            ),
            hasWebAdminAccess: params.getParam(
              'hasWebAdminAccess',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: EndUserFormWidget.routeName,
          path: EndUserFormWidget.routePath,
          builder: (context, params) => EndUserFormWidget(),
        ),
        FFRoute(
          name: CashbackUsersWidget.routeName,
          path: CashbackUsersWidget.routePath,
          builder: (context, params) => CashbackUsersWidget(),
        ),
        FFRoute(
          name: VisitRewardUsersWidget.routeName,
          path: VisitRewardUsersWidget.routePath,
          builder: (context, params) => VisitRewardUsersWidget(),
        ),
        FFRoute(
          name: PointsbasedUsersWidget.routeName,
          path: PointsbasedUsersWidget.routePath,
          builder: (context, params) => PointsbasedUsersWidget(),
        ),
        FFRoute(
          name: RegisteredUserAdminPanelWidget.routeName,
          path: RegisteredUserAdminPanelWidget.routePath,
          builder: (context, params) => RegisteredUserAdminPanelWidget(),
        ),
        FFRoute(
          name: LoyaltySchemeSettingsGameOneWidget.routeName,
          path: LoyaltySchemeSettingsGameOneWidget.routePath,
          builder: (context, params) => LoyaltySchemeSettingsGameOneWidget(),
        ),
        FFRoute(
          name: LoyaltySchemeSettingsRewardOneWidget.routeName,
          path: LoyaltySchemeSettingsRewardOneWidget.routePath,
          builder: (context, params) => LoyaltySchemeSettingsRewardOneWidget(),
        ),
        FFRoute(
          name: LoyaltyCashbackWidget.routeName,
          path: LoyaltyCashbackWidget.routePath,
          builder: (context, params) => LoyaltyCashbackWidget(),
        ),
        FFRoute(
          name: NewAdminWidget.routeName,
          path: NewAdminWidget.routePath,
          builder: (context, params) => NewAdminWidget(),
        ),
        FFRoute(
          name: RegisteredAdminWidget.routeName,
          path: RegisteredAdminWidget.routePath,
          builder: (context, params) => RegisteredAdminWidget(),
        ),
        FFRoute(
          name: RewardSettingsWidget.routeName,
          path: RewardSettingsWidget.routePath,
          builder: (context, params) => RewardSettingsWidget(),
        ),
        FFRoute(
          name: ReadersWidget.routeName,
          path: ReadersWidget.routePath,
          builder: (context, params) => ReadersWidget(),
        ),
        FFRoute(
          name: SelectVendorWidget.routeName,
          path: SelectVendorWidget.routePath,
          builder: (context, params) => SelectVendorWidget(),
        ),
        FFRoute(
          name: DeletethisasapWidget.routeName,
          path: DeletethisasapWidget.routePath,
          builder: (context, params) => DeletethisasapWidget(),
        ),
        FFRoute(
          name: ErrorAdminAccessWidget.routeName,
          path: ErrorAdminAccessWidget.routePath,
          builder: (context, params) => ErrorAdminAccessWidget(),
        ),
        FFRoute(
          name: CompanyInfoWidget.routeName,
          path: CompanyInfoWidget.routePath,
          builder: (context, params) => CompanyInfoWidget(),
        ),
        FFRoute(
          name: TransactionPageWidget.routeName,
          path: TransactionPageWidget.routePath,
          builder: (context, params) => TransactionPageWidget(),
        ),
        FFRoute(
          name: PromosPageWidget.routeName,
          path: PromosPageWidget.routePath,
          builder: (context, params) => PromosPageWidget(),
        ),
        FFRoute(
          name: OptionalPrepaidModulesExample1Widget.routeName,
          path: OptionalPrepaidModulesExample1Widget.routePath,
          builder: (context, params) => OptionalPrepaidModulesExample1Widget(),
        ),
        FFRoute(
          name: GroupsPageWidget.routeName,
          path: GroupsPageWidget.routePath,
          builder: (context, params) => GroupsPageWidget(),
        ),
        FFRoute(
          name: AddUsersGroupWidget.routeName,
          path: AddUsersGroupWidget.routePath,
          asyncParams: {
            'groupData': getDoc(['groups'], GroupsRecord.fromSnapshot),
          },
          builder: (context, params) => AddUsersGroupWidget(
            groupData: params.getParam(
              'groupData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditUsersGroupWidget.routeName,
          path: EditUsersGroupWidget.routePath,
          asyncParams: {
            'groupData': getDoc(['groups'], GroupsRecord.fromSnapshot),
          },
          builder: (context, params) => EditUsersGroupWidget(
            groupData: params.getParam(
              'groupData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: TransactionHistoryWidget.routeName,
          path: TransactionHistoryWidget.routePath,
          asyncParams: {
            'companyReference':
                getDoc(['companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => TransactionHistoryWidget(
            companyReference: params.getParam(
              'companyReference',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: PromosAvailableWidget.routeName,
          path: PromosAvailableWidget.routePath,
          builder: (context, params) => PromosAvailableWidget(
            companyRef: params.getParam(
              'companyRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['companies'],
            ),
          ),
        ),
        FFRoute(
          name: SettingsUserWidget.routeName,
          path: SettingsUserWidget.routePath,
          asyncParams: {
            'companyData': getDoc(['companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => SettingsUserWidget(
            companyData: params.getParam(
              'companyData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MainSettingsWidget.routeName,
          path: MainSettingsWidget.routePath,
          asyncParams: {
            'companyData': getDoc(['companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => MainSettingsWidget(
            companyData: params.getParam(
              'companyData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: OptionalPaidModulesExampleWidget.routeName,
          path: OptionalPaidModulesExampleWidget.routePath,
          builder: (context, params) => OptionalPaidModulesExampleWidget(),
        ),
        FFRoute(
          name: PaidModulesWidget.routeName,
          path: PaidModulesWidget.routePath,
          builder: (context, params) => PaidModulesWidget(),
        ),
        FFRoute(
          name: UserGroupsPageWidget.routeName,
          path: UserGroupsPageWidget.routePath,
          builder: (context, params) => UserGroupsPageWidget(),
        ),
        FFRoute(
          name: PolicyAndPrivacyPageWidget.routeName,
          path: PolicyAndPrivacyPageWidget.routePath,
          builder: (context, params) => PolicyAndPrivacyPageWidget(),
        ),
        FFRoute(
          name: QrVendorUserPageWidget.routeName,
          path: QrVendorUserPageWidget.routePath,
          builder: (context, params) => QrVendorUserPageWidget(),
        ),
        FFRoute(
          name: ScanVendorEmailVerificationWidget.routeName,
          path: ScanVendorEmailVerificationWidget.routePath,
          asyncParams: {
            'companyData': getDoc(['companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => ScanVendorEmailVerificationWidget(
            companyData: params.getParam(
              'companyData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CompanyDetailsEndUserWidget.routeName,
          path: CompanyDetailsEndUserWidget.routePath,
          asyncParams: {
            'companyData': getDoc(['companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => CompanyDetailsEndUserWidget(
            companyData: params.getParam(
              'companyData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: Exxamlple4Widget.routeName,
          path: Exxamlple4Widget.routePath,
          builder: (context, params) => Exxamlple4Widget(),
        ),
        FFRoute(
          name: RegisteredUserAdminPanelTelephoneNumberWidget.routeName,
          path: RegisteredUserAdminPanelTelephoneNumberWidget.routePath,
          builder: (context, params) =>
              RegisteredUserAdminPanelTelephoneNumberWidget(),
        ),
        FFRoute(
          name: RegisteredUserAdminPanelNameWidget.routeName,
          path: RegisteredUserAdminPanelNameWidget.routePath,
          builder: (context, params) => RegisteredUserAdminPanelNameWidget(),
        ),
        FFRoute(
          name: RegisteredAdminNameWidget.routeName,
          path: RegisteredAdminNameWidget.routePath,
          builder: (context, params) => RegisteredAdminNameWidget(),
        ),
        FFRoute(
          name: RegisteredAdminTelephoneNumberWidget.routeName,
          path: RegisteredAdminTelephoneNumberWidget.routePath,
          builder: (context, params) => RegisteredAdminTelephoneNumberWidget(),
        ),
        FFRoute(
          name: LoyaltyCashbackCopyWidget.routeName,
          path: LoyaltyCashbackCopyWidget.routePath,
          builder: (context, params) => LoyaltyCashbackCopyWidget(),
        ),
        FFRoute(
          name: UsersTransactionHistoryWidget.routeName,
          path: UsersTransactionHistoryWidget.routePath,
          asyncParams: {
            'companyReference':
                getDoc(['companies'], CompaniesRecord.fromSnapshot),
            'userData': getDoc(
                ['users', 'userCompanies'], UserCompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => UsersTransactionHistoryWidget(
            companyReference: params.getParam(
              'companyReference',
              ParamType.Document,
            ),
            userData: params.getParam(
              'userData',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: RewardsProgramDetailsWidget.routeName,
          path: RewardsProgramDetailsWidget.routePath,
          asyncParams: {
            'companyData': getDoc(['companies'], CompaniesRecord.fromSnapshot),
          },
          builder: (context, params) => RewardsProgramDetailsWidget(
            companyData: params.getParam(
              'companyData',
              ParamType.Document,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signInPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      child: Image.asset(
                        'assets/images/play_store_512.png',
                        fit: BoxFit.contain,
                      ),
                    )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
