import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dodajzamowieniezdjecie_model.dart';
export 'dodajzamowieniezdjecie_model.dart';

class DodajzamowieniezdjecieWidget extends StatefulWidget {
  const DodajzamowieniezdjecieWidget({super.key});

  @override
  State<DodajzamowieniezdjecieWidget> createState() =>
      _DodajzamowieniezdjecieWidgetState();
}

class _DodajzamowieniezdjecieWidgetState
    extends State<DodajzamowieniezdjecieWidget> {
  late DodajzamowieniezdjecieModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DodajzamowieniezdjecieModel());

    _model.dodatkoweinfozamoreczne2TextController ??= TextEditingController();
    _model.dodatkoweinfozamoreczne2FocusNode ??= FocusNode();
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
      height: 809.0,
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
                Navigator.pop(context);
              },
              text: 'Anuluj',
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
                  if (FFAppState().tymczasowyczas == 200000) {
                    await ZamowienieRecord.collection
                        .doc()
                        .set(createZamowienieRecordData(
                          nrzamowienia: functions.numerzamowienia(),
                          restauracja: currentUserDocument?.restauracja,
                          godzinadodania: getCurrentTimestamp,
                          zdjecie: true,
                          dostarczone: false,
                          dodatkoweinformacje: _model
                              .dodatkoweinfozamoreczne2TextController.text,
                          przyjete: false,
                          miasto: '1',
                          jaknaszybciej: true,
                          zdjecieplik: _model.uploadedFileUrl,
                          przydzielonykurier: currentUserReference,
                          restauraucjaminuty: 0,
                          nagodzine: false,
                          godzinanagodzine: '0',
                          jaknajszybciejkurier: false,
                          kurierminuty: 0,
                          nagodzinekurier: false,
                          godzinanagodzinekurier: '0',
                          odrzucone: false,
                          datadzien:
                              dateTimeFormat('d/M/y', getCurrentTimestamp),
                        ));
                  } else {
                    if (FFAppState().nagodzine == true) {
                      await ZamowienieRecord.collection
                          .doc()
                          .set(createZamowienieRecordData(
                            nrzamowienia: functions.numerzamowienia(),
                            restauracja: currentUserDocument?.restauracja,
                            godzinadodania: getCurrentTimestamp,
                            zdjecie: true,
                            dostarczone: false,
                            dodatkoweinformacje: _model
                                .dodatkoweinfozamoreczne2TextController.text,
                            przyjete: false,
                            miasto: '1',
                            jaknaszybciej: false,
                            nagodzine: true,
                            godzinanagodzine: FFAppState().godzina,
                            zdjecieplik: _model.uploadedFileUrl,
                            przydzielonykurier: currentUserReference,
                            jaknajszybciejkurier: false,
                            kurierminuty: 0,
                            nagodzinekurier: false,
                            godzinanagodzinekurier: '0',
                            odrzucone: false,
                            datadzien:
                                dateTimeFormat('d/M/y', getCurrentTimestamp),
                          ));
                    } else {
                      await ZamowienieRecord.collection
                          .doc()
                          .set(createZamowienieRecordData(
                            nrzamowienia: functions.numerzamowienia(),
                            restauracja: currentUserDocument?.restauracja,
                            godzinadodania: getCurrentTimestamp,
                            zdjecie: true,
                            dostarczone: false,
                            dodatkoweinformacje: _model
                                .dodatkoweinfozamoreczne2TextController.text,
                            przyjete: false,
                            miasto: '1',
                            jaknaszybciej: false,
                            restauraucjaminuty: FFAppState().tymczasowyczas,
                            zdjecieplik: _model.uploadedFileUrl,
                            przydzielonykurier: currentUserReference,
                            nagodzine: false,
                            godzinanagodzine: '0',
                            jaknajszybciejkurier: false,
                            kurierminuty: 0,
                            nagodzinekurier: false,
                            godzinanagodzinekurier: '0',
                            odrzucone: false,
                            datadzien:
                                dateTimeFormat('d/M/y', getCurrentTimestamp),
                          ));
                    }
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text(
                        'Zamówienie dodane',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      duration: const Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                  FFAppState().nagodzine = false;
                  FFAppState().godzina = '';
                  setState(() {});

                  context.pushNamed('Restaura');
                },
                text: 'Akceptuj',
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
                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                    context: context,
                    allowPhoto: true,
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
                    setState(() => _model.isDataUploading = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    var downloadUrls = <String>[];
                    try {
                      selectedUploadedFiles = selectedMedia
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                                height: m.dimensions?.height,
                                width: m.dimensions?.width,
                                blurHash: m.blurHash,
                              ))
                          .toList();

                      downloadUrls = (await Future.wait(
                        selectedMedia.map(
                          (m) async => await uploadData(m.storagePath, m.bytes),
                        ),
                      ))
                          .where((u) => u != null)
                          .map((u) => u!)
                          .toList();
                    } finally {
                      _model.isDataUploading = false;
                    }
                    if (selectedUploadedFiles.length == selectedMedia.length &&
                        downloadUrls.length == selectedMedia.length) {
                      setState(() {
                        _model.uploadedLocalFile = selectedUploadedFiles.first;
                        _model.uploadedFileUrl = downloadUrls.first;
                      });
                    } else {
                      setState(() {});
                      return;
                    }
                  }
                },
                text: 'Dodaj zdjęcie',
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
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  child: TextFormField(
                    controller: _model.dodatkoweinfozamoreczne2TextController,
                    focusNode: _model.dodatkoweinfozamoreczne2FocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Dodatkowe informacje...',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFFBCBCBC),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w200,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFD6D6D6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.center,
                    validator: _model
                        .dodatkoweinfozamoreczne2TextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              constraints: BoxConstraints(
                minHeight: MediaQuery.sizeOf(context).height * 0.6,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/szybkieksport.png',
                  ).image,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    _model.uploadedFileUrl,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    fit: BoxFit.cover,
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
