import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'daty_widget.dart' show DatyWidget;
import 'package:flutter/material.dart';

class DatyModel extends FlutterFlowModel<DatyWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ZamowienieRecord>? danedozamowieniazakres;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
