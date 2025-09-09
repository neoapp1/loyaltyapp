import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? isWeb
          ? Container()
          : Container(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              child: Image.asset(
                'assets/images/play_store_512.png',
                fit: BoxFit.contain,
              ),
            )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'SignUpPage': (data) async => ParameterData(
        allParams: {
          'emailAccount': getParameter<String>(data, 'emailAccount'),
          'companyId': getParameter<String>(data, 'companyId'),
          'isAdmin': getParameter<bool>(data, 'isAdmin'),
          'isEmployee': getParameter<bool>(data, 'isEmployee'),
          'isUser': getParameter<bool>(data, 'isUser'),
          'isMasterAdmin': getParameter<bool>(data, 'isMasterAdmin'),
          'hasScannerAccess': getParameter<bool>(data, 'hasScannerAccess'),
          'hasWebAdminAccess': getParameter<bool>(data, 'hasWebAdminAccess'),
        },
      ),
  'UserHomePage': ParameterData.none(),
  'SignInPage': ParameterData.none(),
  'memberSettingsPage': ParameterData.none(),
  'DashboardResponsiveAdminPanel': ParameterData.none(),
  'NewUserAdminPanel': ParameterData.none(),
  'employeeHomePage': ParameterData.none(),
  'masterAdminHomePage': ParameterData.none(),
  'HomePage': ParameterData.none(),
  'SignUpNewPage': ParameterData.none(),
  'verificationCode': (data) async => ParameterData(
        allParams: {
          'emailAccount': getParameter<String>(data, 'emailAccount'),
          'companyId': getParameter<String>(data, 'companyId'),
          'isAdmin': getParameter<bool>(data, 'isAdmin'),
          'isUser': getParameter<bool>(data, 'isUser'),
          'isEmployee': getParameter<bool>(data, 'isEmployee'),
          'isMasterAdmin': getParameter<bool>(data, 'isMasterAdmin'),
          'hasScannerAccess': getParameter<bool>(data, 'hasScannerAccess'),
          'hasWebAdminAccess': getParameter<bool>(data, 'hasWebAdminAccess'),
        },
      ),
  'endUserForm': ParameterData.none(),
  'cashbackUsers': ParameterData.none(),
  'visitRewardUsers': ParameterData.none(),
  'pointsbasedUsers': ParameterData.none(),
  'RegisteredUserAdminPanel': ParameterData.none(),
  'LoyaltySchemeSettingsGameOne': ParameterData.none(),
  'LoyaltySchemeSettingsRewardOne': ParameterData.none(),
  'LoyaltyCashback': ParameterData.none(),
  'NewAdmin': ParameterData.none(),
  'RegisteredAdmin': ParameterData.none(),
  'RewardSettings': ParameterData.none(),
  'Readers': ParameterData.none(),
  'selectVendor': ParameterData.none(),
  'deletethisasap': ParameterData.none(),
  'errorAdminAccess': ParameterData.none(),
  'CompanyInfo': ParameterData.none(),
  'TransactionPage': ParameterData.none(),
  'PromosPage': ParameterData.none(),
  'optionalPrepaidModulesExample1': ParameterData.none(),
  'GroupsPage': ParameterData.none(),
  'AddUsersGroup': (data) async => ParameterData(
        allParams: {
          'groupData': await getDocumentParameter<GroupsRecord>(
              data, 'groupData', GroupsRecord.fromSnapshot),
        },
      ),
  'EditUsersGroup': (data) async => ParameterData(
        allParams: {
          'groupData': await getDocumentParameter<GroupsRecord>(
              data, 'groupData', GroupsRecord.fromSnapshot),
        },
      ),
  'transactionHistory': (data) async => ParameterData(
        allParams: {
          'companyReference': await getDocumentParameter<CompaniesRecord>(
              data, 'companyReference', CompaniesRecord.fromSnapshot),
        },
      ),
  'promosAvailable': (data) async => ParameterData(
        allParams: {
          'companyRef': getParameter<DocumentReference>(data, 'companyRef'),
        },
      ),
  'settingsUser': (data) async => ParameterData(
        allParams: {
          'companyData': await getDocumentParameter<CompaniesRecord>(
              data, 'companyData', CompaniesRecord.fromSnapshot),
        },
      ),
  'mainSettings': (data) async => ParameterData(
        allParams: {
          'companyData': await getDocumentParameter<CompaniesRecord>(
              data, 'companyData', CompaniesRecord.fromSnapshot),
        },
      ),
  'optionalPaidModulesExample': ParameterData.none(),
  'PaidModules': ParameterData.none(),
  'userGroupsPage': ParameterData.none(),
  'policyAndPrivacyPage': ParameterData.none(),
  'qrVendorUserPage': ParameterData.none(),
  'ScanVendorEmailVerification': (data) async => ParameterData(
        allParams: {
          'companyData': await getDocumentParameter<CompaniesRecord>(
              data, 'companyData', CompaniesRecord.fromSnapshot),
        },
      ),
  'companyDetailsEndUser': (data) async => ParameterData(
        allParams: {
          'companyData': await getDocumentParameter<CompaniesRecord>(
              data, 'companyData', CompaniesRecord.fromSnapshot),
        },
      ),
  'exxamlple4': ParameterData.none(),
  'RegisteredUserAdminPanelTelephoneNumber': ParameterData.none(),
  'RegisteredUserAdminPanelName': ParameterData.none(),
  'RegisteredAdminName': ParameterData.none(),
  'RegisteredAdminTelephoneNumber': ParameterData.none(),
  'LoyaltyCashbackCopy': ParameterData.none(),
  'usersTransactionHistory': (data) async => ParameterData(
        allParams: {
          'companyReference': await getDocumentParameter<CompaniesRecord>(
              data, 'companyReference', CompaniesRecord.fromSnapshot),
          'userData': await getDocumentParameter<UserCompaniesRecord>(
              data, 'userData', UserCompaniesRecord.fromSnapshot),
        },
      ),
  'rewardsProgramDetails': (data) async => ParameterData(
        allParams: {
          'companyData': await getDocumentParameter<CompaniesRecord>(
              data, 'companyData', CompaniesRecord.fromSnapshot),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
