import '/flutter_flow/flutter_flow_util.dart';
import 'spozniesie_widget.dart' show SpozniesieWidget;
import 'package:flutter/material.dart';

class SpozniesieModel extends FlutterFlowModel<SpozniesieWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for innyczaswminutachresaturacja widget.
  FocusNode? innyczaswminutachresaturacjaFocusNode;
  TextEditingController? innyczaswminutachresaturacjaTextController;
  String? Function(BuildContext, String?)?
      innyczaswminutachresaturacjaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    innyczaswminutachresaturacjaFocusNode?.dispose();
    innyczaswminutachresaturacjaTextController?.dispose();
  }
}
