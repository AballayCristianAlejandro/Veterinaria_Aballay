import '/flutter_flow/flutter_flow_util.dart';
import 'register_vaccine_update_widget.dart' show RegisterVaccineUpdateWidget;
import 'package:flutter/material.dart';

class RegisterVaccineUpdateModel
    extends FlutterFlowModel<RegisterVaccineUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for FechaAplicacion widget.
  FocusNode? fechaAplicacionFocusNode;
  TextEditingController? fechaAplicacionController;
  String? Function(BuildContext, String?)? fechaAplicacionControllerValidator;
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
    nombreFocusNode?.dispose();
    nombreController?.dispose();

    fechaAplicacionFocusNode?.dispose();
    fechaAplicacionController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
