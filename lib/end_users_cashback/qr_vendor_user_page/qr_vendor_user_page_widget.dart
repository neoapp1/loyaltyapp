import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'qr_vendor_user_page_model.dart';
export 'qr_vendor_user_page_model.dart';

/// Design a clean, mobile-friendly user interface for a screen that allows
/// users to add a vendor by scanning a QR code.
///
/// 🔹 The layout should include:
///
/// A prominent title: "Add Vendor via QR Code"
///
/// A clear description below: "Scan the QR code provided by the vendor to
/// connect them to your company."
///
/// A large, centered button labeled "Scan QR Code" with a camera icon, styled
/// to be highly visible and accessible.
///
/// When the user taps the button, it should open the device camera (QR
/// scanner action will be handled separately).
///
/// 🔹 Optional elements:
///
/// A subtle info icon (tooltip) explaining what this feature does.
///
/// A placeholder image or icon for QR scanning to guide the user visually.
///
/// Responsive layout for both mobile and tablet view.
///
/// 🎨 Use a modern, clean aesthetic consistent with FlutterFlow best
/// practices. Ensure good color contrast and spacing for usability.
/// Prioritize intuitive navigation and minimal cognitive load.
class QrVendorUserPageWidget extends StatefulWidget {
  const QrVendorUserPageWidget({super.key});

  static String routeName = 'qrVendorUserPage';
  static String routePath = '/qrVendorUserPage';

  @override
  State<QrVendorUserPageWidget> createState() => _QrVendorUserPageWidgetState();
}

class _QrVendorUserPageWidgetState extends State<QrVendorUserPageWidget> {
  late QrVendorUserPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrVendorUserPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'qrVendorUserPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'w5j2mqqr' /* Add Vendor */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                ].divide(SizedBox(width: 20.0)),
              ),
              actions: [],
              centerTitle: false,
              elevation: 1.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 600.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'leb8pxt8' /* Add Vendor via 
QR Code */
                                    ,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'nhxp68j9' /* Ready to earn? Scan the QR and... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: 300.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.qr_code_scanner,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 200.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.qrcodeData =
                                      await FlutterBarcodeScanner.scanBarcode(
                                    '#C62828', // scanning line color
                                    FFLocalizations.of(context).getText(
                                      'mzp2bbpm' /* Cancel */,
                                    ), // cancel button text
                                    true, // whether to show the flash icon
                                    ScanMode.BARCODE,
                                  );

                                  _model.scannedCode = _model.qrcodeData;
                                  safeSetState(() {});
                                  try {
                                    final result = await FirebaseFunctions
                                        .instance
                                        .httpsCallable('userLinkingToVendor')
                                        .call({
                                      "userId": currentUserUid,
                                      "qrCompanyId": _model.scannedCode,
                                    });
                                    _model.cloudFunctioncg4 =
                                        UserLinkingToVendorCloudFunctionCallResponse(
                                      data: LinkUserToVendorResponseStruct
                                          .fromMap(result.data),
                                      succeeded: true,
                                      resultAsString: result.data.toString(),
                                      jsonBody: result.data,
                                    );
                                  } on FirebaseFunctionsException catch (error) {
                                    _model.cloudFunctioncg4 =
                                        UserLinkingToVendorCloudFunctionCallResponse(
                                      errorCode: error.code,
                                      succeeded: false,
                                    );
                                  }

                                  if (_model.cloudFunctioncg4!.data!.success) {
                                    _model.companyData =
                                        await queryCompaniesRecordOnce(
                                      queryBuilder: (companiesRecord) =>
                                          companiesRecord.where(
                                        'companyId',
                                        isEqualTo: _model.scannedCode,
                                      ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    FFAppState().companyId =
                                        _model.companyData!.companyId;
                                    FFAppState().loyaltyScheme =
                                        _model.companyData!.loyaltySystem;
                                    safeSetState(() {});

                                    context.pushNamed(HomePageWidget.routeName);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          _model
                                              .cloudFunctioncg4!.data!.message,
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 8000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  '18c839lw' /* Scan QR Code */,
                                ),
                                icon: Icon(
                                  Icons.camera_alt_rounded,
                                  size: 28.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 64.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 0.0, 32.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  iconColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 32.0))
                          .addToStart(SizedBox(height: 40.0))
                          .addToEnd(SizedBox(height: 40.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
