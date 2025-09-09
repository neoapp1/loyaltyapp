import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loyalty_cashback_widget.dart' show LoyaltyCashbackWidget;
import 'package:flutter/material.dart';

class LoyaltyCashbackModel extends FlutterFlowModel<LoyaltyCashbackWidget> {
  ///  Local state fields for this page.

  bool switchIsMaximumCashbackLimit = false;

  bool switchIsMinimumPurchaseAmountPerTransaction = false;

  bool switchIsMaximumCashBackPerTransaction = false;

  bool switchIsIncludeVatOnCashback = false;

  bool switchIsApplyCashbackBalanceIfRedeeming = false;

  bool oneAdditionalCashbackPercentage = false;

  bool secondAdditionalCashbackPercentage = false;

  bool isSpecificDay = true;

  List<AdditionalCashbackConfigurationsStruct> specificDayList = [];
  void addToSpecificDayList(AdditionalCashbackConfigurationsStruct item) =>
      specificDayList.add(item);
  void removeFromSpecificDayList(AdditionalCashbackConfigurationsStruct item) =>
      specificDayList.remove(item);
  void removeAtIndexFromSpecificDayList(int index) =>
      specificDayList.removeAt(index);
  void insertAtIndexInSpecificDayList(
          int index, AdditionalCashbackConfigurationsStruct item) =>
      specificDayList.insert(index, item);
  void updateSpecificDayListAtIndex(int index,
          Function(AdditionalCashbackConfigurationsStruct) updateFn) =>
      specificDayList[index] = updateFn(specificDayList[index]);

  int? additionalCashbackToDeleteId;

  bool switchMinimumPurchaseForCreditBalance = false;

  bool switchRoundingCashback = false;

  bool switchReference = false;

  bool cashbackPercentageLimitError = false;

  bool switchIsInvitationOnly = false;

  bool switchMaxCashbackPercentagePerTransaction = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchisReference widget.
  bool? switchisReferenceValue;
  // State field(s) for SwitchisInvitationOnly widget.
  bool? switchisInvitationOnlyValue;
  // State field(s) for SwitchMaximumCashBackLimit widget.
  bool? switchMaximumCashBackLimitValue;
  // State field(s) for maximumCashbackLimit widget.
  FocusNode? maximumCashbackLimitFocusNode;
  TextEditingController? maximumCashbackLimitTextController;
  String? Function(BuildContext, String?)?
      maximumCashbackLimitTextControllerValidator;
  // State field(s) for switchMinimumPurchaseAmountPerTransaction widget.
  bool? switchMinimumPurchaseAmountPerTransactionValue;
  // State field(s) for minimumPurchaseAmountPerTransaction widget.
  FocusNode? minimumPurchaseAmountPerTransactionFocusNode;
  TextEditingController? minimumPurchaseAmountPerTransactionTextController;
  String? Function(BuildContext, String?)?
      minimumPurchaseAmountPerTransactionTextControllerValidator;
  // State field(s) for switchMaximumCashBackPerTransaction widget.
  bool? switchMaximumCashBackPerTransactionValue;
  // State field(s) for maximumCashBackPerTransaction widget.
  FocusNode? maximumCashBackPerTransactionFocusNode;
  TextEditingController? maximumCashBackPerTransactionTextController;
  String? Function(BuildContext, String?)?
      maximumCashBackPerTransactionTextControllerValidator;
  // State field(s) for switchRoundingCashback widget.
  bool? switchRoundingCashbackValue;
  // State field(s) for switchMinimumPurchaseToUseCreditBalance widget.
  bool? switchMinimumPurchaseToUseCreditBalanceValue;
  // State field(s) for minimumPurchaseForCreditBalance widget.
  FocusNode? minimumPurchaseForCreditBalanceFocusNode;
  TextEditingController? minimumPurchaseForCreditBalanceTextController;
  String? Function(BuildContext, String?)?
      minimumPurchaseForCreditBalanceTextControllerValidator;
  // State field(s) for switchMaxCashbackPercentagePerTransaction widget.
  bool? switchMaxCashbackPercentagePerTransactionValue;
  // State field(s) for maxCashbackPercentagePerTransaction widget.
  FocusNode? maxCashbackPercentagePerTransactionFocusNode;
  TextEditingController? maxCashbackPercentagePerTransactionTextController;
  String? Function(BuildContext, String?)?
      maxCashbackPercentagePerTransactionTextControllerValidator;
  // State field(s) for SwitchIncludeVatOnCashback widget.
  bool? switchIncludeVatOnCashbackValue;
  // State field(s) for vatPercentage widget.
  FocusNode? vatPercentageFocusNode;
  TextEditingController? vatPercentageTextController;
  String? Function(BuildContext, String?)? vatPercentageTextControllerValidator;
  // State field(s) for SwitchApplyCashbackBalanceIfRedeeming widget.
  bool? switchApplyCashbackBalanceIfRedeemingValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? numberOfAdditionalCashbackP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    maximumCashbackLimitFocusNode?.dispose();
    maximumCashbackLimitTextController?.dispose();

    minimumPurchaseAmountPerTransactionFocusNode?.dispose();
    minimumPurchaseAmountPerTransactionTextController?.dispose();

    maximumCashBackPerTransactionFocusNode?.dispose();
    maximumCashBackPerTransactionTextController?.dispose();

    minimumPurchaseForCreditBalanceFocusNode?.dispose();
    minimumPurchaseForCreditBalanceTextController?.dispose();

    maxCashbackPercentagePerTransactionFocusNode?.dispose();
    maxCashbackPercentagePerTransactionTextController?.dispose();

    vatPercentageFocusNode?.dispose();
    vatPercentageTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController7?.dispose();
  }
}
