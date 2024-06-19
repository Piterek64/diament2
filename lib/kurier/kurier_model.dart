import '/flutter_flow/flutter_flow_util.dart';
import 'kurier_widget.dart' show KurierWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class KurierModel extends FlutterFlowModel<KurierWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
