import '/flutter_flow/flutter_flow_util.dart';
import 'register_prescripcion_widget.dart' show RegisterPrescripcionWidget;
import 'package:flutter/material.dart';

class RegisterPrescripcionModel
    extends FlutterFlowModel<RegisterPrescripcionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for NameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  // State field(s) for FechaAnalisis widget.
  FocusNode? fechaAnalisisFocusNode;
  TextEditingController? fechaAnalisisController;
  String? Function(BuildContext, String?)? fechaAnalisisControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameTFFocusNode?.dispose();
    nameTFController?.dispose();

    fechaAnalisisFocusNode?.dispose();
    fechaAnalisisController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
