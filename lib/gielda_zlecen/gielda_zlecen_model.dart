import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gielda_zlecen_widget.dart' show GieldaZlecenWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GieldaZlecenModel extends FlutterFlowModel<GieldaZlecenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  List<ZamowienieRecord>? listViewPreviousSnapshot;
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
