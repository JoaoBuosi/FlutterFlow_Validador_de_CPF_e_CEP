import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'clean_and_modern_page_model.dart';
export 'clean_and_modern_page_model.dart';

/// Create a clean and modern splash screen layout (Page_00_Splash).
///
/// Center a sleek, modern app logo or a styled icon (like a gear or abstract
/// symbol) in the middle of the screen.
/// Below the icon, add the app title "App de Validação" in a bold,
/// professional typography.
/// Use a minimalist and elegant background color (soft off-white or light
/// neutral).
/// The screen should be fully responsive using a Column widget centered
/// inside a Container, with clean padding, proper spacing, and professional
/// color contrast.
class CleanAndModernPageWidget extends StatefulWidget {
  const CleanAndModernPageWidget({super.key});

  static String routeName = 'CleanAndModernPage';
  static String routePath = '/cleanAndModernPage';

  @override
  State<CleanAndModernPageWidget> createState() =>
      _CleanAndModernPageWidgetState();
}

class _CleanAndModernPageWidgetState extends State<CleanAndModernPageWidget> {
  late CleanAndModernPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CleanAndModernPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF9F9F9),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Container(
              child: Container(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 24.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              8.0,
                            ),
                            spreadRadius: 0.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(28.0),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Icon(
                        Icons.verified_user_rounded,
                        color: Colors.white,
                        size: 48.0,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'App de Validação',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: Color(0xFF000102),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                        Text(
                          'SISTEMA PROFISSIONAL',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(RegistroWidget.routeName);
                      },
                      text: 'Entrar',
                      options: FFButtonOptions(
                        height: 45.65,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: Container(
                        child: Container(
                          child: CircularPercentIndicator(
                            percent: 0.0,
                            radius: 12.0,
                            lineWidth: 3.0,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: Color(0x664B39EF),
                            backgroundColor:
                                FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
