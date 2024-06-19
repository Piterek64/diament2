import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mojestatystyki_widget.dart' show MojestatystykiWidget;
import 'package:flutter/material.dart';

class MojestatystykiModel extends FlutterFlowModel<MojestatystykiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ZamowienieRecord>? danedozamowien;
  // Stores action output result for [Bottom Sheet - Daty] action in Button widget.
  List<DocumentReference>? returzamowienia;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
