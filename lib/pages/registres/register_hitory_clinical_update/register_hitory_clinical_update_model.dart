import '/flutter_flow/flutter_flow_util.dart';
import 'register_hitory_clinical_update_widget.dart'
    show RegisterHitoryClinicalUpdateWidget;
import 'package:flutter/material.dart';

class RegisterHitoryClinicalUpdateModel
    extends FlutterFlowModel<RegisterHitoryClinicalUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ExamenFisico widget.
  FocusNode? examenFisicoFocusNode;
  TextEditingController? examenFisicoController;
  String? Function(BuildContext, String?)? examenFisicoControllerValidator;
  // State field(s) for Diagnostico widget.
  FocusNode? diagnosticoFocusNode;
  TextEditingController? diagnosticoController;
  String? Function(BuildContext, String?)? diagnosticoControllerValidator;
  // State field(s) for Tratamineto widget.
  FocusNode? trataminetoFocusNode;
  TextEditingController? trataminetoController;
  String? Function(BuildContext, String?)? trataminetoControllerValidator;
  // State field(s) for FechadeHistoria widget.
  FocusNode? fechadeHistoriaFocusNode;
  TextEditingController? fechadeHistoriaController;
  String? Function(BuildContext, String?)? fechadeHistoriaControllerValidator;
  // State field(s) for Doctor widget.
  FocusNode? doctorFocusNode;
  TextEditingController? doctorController;
  String? Function(BuildContext, String?)? doctorControllerValidator;
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
    examenFisicoFocusNode?.dispose();
    examenFisicoController?.dispose();

    diagnosticoFocusNode?.dispose();
    diagnosticoController?.dispose();

    trataminetoFocusNode?.dispose();
    trataminetoController?.dispose();

    fechadeHistoriaFocusNode?.dispose();
    fechadeHistoriaController?.dispose();

    doctorFocusNode?.dispose();
    doctorController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
