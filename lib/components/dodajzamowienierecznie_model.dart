import '/flutter_flow/flutter_flow_util.dart';
import 'dodajzamowienierecznie_widget.dart' show DodajzamowienierecznieWidget;
import 'package:flutter/material.dart';

class DodajzamowienierecznieModel
    extends FlutterFlowModel<DodajzamowienierecznieWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Adresdostawy widget.
  FocusNode? adresdostawyFocusNode;
  TextEditingController? adresdostawyTextController;
  String? Function(BuildContext, String?)? adresdostawyTextControllerValidator;
  // State field(s) for dodatkoweinfozamoreczne widget.
  FocusNode? dodatkoweinfozamoreczneFocusNode;
  TextEditingController? dodatkoweinfozamoreczneTextController;
  String? Function(BuildContext, String?)?
      dodatkoweinfozamoreczneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    adresdostawyFocusNode?.dispose();
    adresdostawyTextController?.dispose();

    dodatkoweinfozamoreczneFocusNode?.dispose();
    dodatkoweinfozamoreczneTextController?.dispose();
  }
}
