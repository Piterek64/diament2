import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'ustawienia_kurier_model.dart';
export 'ustawienia_kurier_model.dart';

class UstawieniaKurierWidget extends StatefulWidget {
  const UstawieniaKurierWidget({super.key});

  @override
  State<UstawieniaKurierWidget> createState() => _UstawieniaKurierWidgetState();
}

class _UstawieniaKurierWidgetState extends State<UstawieniaKurierWidget> {
  late UstawieniaKurierModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UstawieniaKurierModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('Kurier');
            },
            child: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          title: Text(
            'Ustawienia',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w300,
                ),
          ),
          actions: const [],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10.0),
            child: Container(),
          ),
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Dźwięk powiadomienia',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) =>
                      StreamBuilder<List<PowiadomieniadzwiekiRecord>>(
                    stream: queryPowiadomieniadzwiekiRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PowiadomieniadzwiekiRecord>
                          radioButtonPowiadomieniadzwiekiRecordList =
                          snapshot.data!;
                      return FlutterFlowRadioButton(
                        options: radioButtonPowiadomieniadzwiekiRecordList
                            .map((e) => e.nazwa)
                            .toList()
                            .toList(),
                        onChanged: (val) async {
                          setState(() {});
                          await currentUserReference!
                              .update(createUserRecordData(
                            powiadomienie:
                                radioButtonPowiadomieniadzwiekiRecordList
                                    .where((e) =>
                                        e.nazwa == _model.radioButtonValue)
                                    .toList()
                                    .first
                                    .powiadomienie,
                          ));
                          _model.soundPlayer ??= AudioPlayer();
                          if (_model.soundPlayer!.playing) {
                            await _model.soundPlayer!.stop();
                          }
                          _model.soundPlayer!.setVolume(1.0);
                          _model.soundPlayer!
                              .setUrl(valueOrDefault(
                                  currentUserDocument?.powiadomienie, ''))
                              .then((_) => _model.soundPlayer!.play());
                        },
                        controller: _model.radioButtonValueController ??=
                            FormFieldController<String>(
                                radioButtonPowiadomieniadzwiekiRecordList
                                    .where((e) =>
                                        e.powiadomienie ==
                                        valueOrDefault(
                                            currentUserDocument?.powiadomienie,
                                            ''))
                                    .toList()
                                    .first
                                    .nazwa),
                        optionHeight: 40.0,
                        textStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: FlutterFlowTheme.of(context).primary,
                        inactiveRadioButtonColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
