import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'daty_model.dart';
export 'daty_model.dart';

class DatyWidget extends StatefulWidget {
  const DatyWidget({super.key});

  @override
  State<DatyWidget> createState() => _DatyWidgetState();
}

class _DatyWidgetState extends State<DatyWidget> {
  late DatyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DatyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 332.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FFButtonWidget(
              onPressed: () async {
                final datePicked1Date = await showDatePicker(
                  context: context,
                  initialDate: getCurrentTimestamp,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2050),
                  builder: (context, child) {
                    return wrapInMaterialDatePickerTheme(
                      context,
                      child!,
                      headerBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      headerForegroundColor: FlutterFlowTheme.of(context).info,
                      headerTextStyle:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      pickerBackgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      pickerForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      selectedDateTimeBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      selectedDateTimeForegroundColor:
                          FlutterFlowTheme.of(context).info,
                      actionButtonForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      iconSize: 24.0,
                    );
                  },
                );

                if (datePicked1Date != null) {
                  safeSetState(() {
                    _model.datePicked1 = DateTime(
                      datePicked1Date.year,
                      datePicked1Date.month,
                      datePicked1Date.day,
                    );
                  });
                }
                FFAppState().startDate = _model.datePicked1;
                setState(() {});
              },
              text:
                  'Data początkowa ${dateTimeFormat('d/M/y', FFAppState().startDate)}',
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 2.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  final datePicked2Date = await showDatePicker(
                    context: context,
                    initialDate: getCurrentTimestamp,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2050),
                    builder: (context, child) {
                      return wrapInMaterialDatePickerTheme(
                        context,
                        child!,
                        headerBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        headerForegroundColor:
                            FlutterFlowTheme.of(context).info,
                        headerTextStyle:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        pickerBackgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        pickerForegroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        selectedDateTimeBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        selectedDateTimeForegroundColor:
                            FlutterFlowTheme.of(context).info,
                        actionButtonForegroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        iconSize: 24.0,
                      );
                    },
                  );

                  if (datePicked2Date != null) {
                    safeSetState(() {
                      _model.datePicked2 = DateTime(
                        datePicked2Date.year,
                        datePicked2Date.month,
                        datePicked2Date.day,
                      );
                    });
                  }
                  FFAppState().endDate = _model.datePicked2;
                  setState(() {});
                },
                text:
                    'Data końcowa ${dateTimeFormat('d/M/y', FFAppState().endDate)}',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 2.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  _model.danedozamowieniazakres =
                      await queryZamowienieRecordOnce(
                    queryBuilder: (zamowienieRecord) => zamowienieRecord
                        .where(
                          'Dostarczone',
                          isEqualTo: true,
                        )
                        .where(
                          'Przydzielonykurier',
                          isEqualTo: currentUserReference,
                        )
                        .where(
                          'Godzinadodania',
                          isLessThanOrEqualTo: FFAppState().endDate,
                        )
                        .where(
                          'Godzinadodania',
                          isGreaterThanOrEqualTo: FFAppState().startDate,
                        ),
                  );
                  Navigator.pop(
                      context,
                      _model.danedozamowieniazakres
                          ?.map((e) => e.reference)
                          .toList());

                  setState(() {});
                },
                text: 'Potwierdzam wybór',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 2.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
