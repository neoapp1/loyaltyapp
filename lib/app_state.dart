import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _companyId = prefs.getString('ff_companyId') ?? _companyId;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_memberships')) {
        try {
          final serializedData = prefs.getString('ff_memberships') ?? '{}';
          _memberships =
              MembershipsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _loyaltyScheme = prefs.getString('ff_loyaltyScheme') ?? _loyaltyScheme;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _companyId = '';
  String get companyId => _companyId;
  set companyId(String value) {
    _companyId = value;
    prefs.setString('ff_companyId', value);
  }

  MembershipsStruct _memberships = MembershipsStruct.fromSerializableMap(jsonDecode(
      '{\"memberships\":\"[\\\"One Plan\\\",\\\"Reward One\\\",\\\"Game One\\\"]\"}'));
  MembershipsStruct get memberships => _memberships;
  set memberships(MembershipsStruct value) {
    _memberships = value;
    prefs.setString('ff_memberships', value.serialize());
  }

  void updateMembershipsStruct(Function(MembershipsStruct) updateFn) {
    updateFn(_memberships);
    prefs.setString('ff_memberships', _memberships.serialize());
  }

  String _loyaltyScheme = '';
  String get loyaltyScheme => _loyaltyScheme;
  set loyaltyScheme(String value) {
    _loyaltyScheme = value;
    prefs.setString('ff_loyaltyScheme', value);
  }

  bool _searchApprovedEmail = false;
  bool get searchApprovedEmail => _searchApprovedEmail;
  set searchApprovedEmail(bool value) {
    _searchApprovedEmail = value;
  }

  int _userNumberOfCompanies = 0;
  int get userNumberOfCompanies => _userNumberOfCompanies;
  set userNumberOfCompanies(int value) {
    _userNumberOfCompanies = value;
  }

  bool _SearchApprovedUsers = false;
  bool get SearchApprovedUsers => _SearchApprovedUsers;
  set SearchApprovedUsers(bool value) {
    _SearchApprovedUsers = value;
  }

  bool _searchRegisteredUsers = false;
  bool get searchRegisteredUsers => _searchRegisteredUsers;
  set searchRegisteredUsers(bool value) {
    _searchRegisteredUsers = value;
  }

  bool _searchRegisteredEmployees = false;
  bool get searchRegisteredEmployees => _searchRegisteredEmployees;
  set searchRegisteredEmployees(bool value) {
    _searchRegisteredEmployees = value;
  }

  bool _searchUserGroup = false;
  bool get searchUserGroup => _searchUserGroup;
  set searchUserGroup(bool value) {
    _searchUserGroup = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
