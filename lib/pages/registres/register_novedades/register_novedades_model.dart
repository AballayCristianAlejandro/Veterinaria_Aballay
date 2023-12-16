import '/flutter_flow/flutter_flow_util.dart';
import 'register_novedades_widget.dart' show RegisterNovedadesWidget;
import 'package:flutter/material.dart';

class RegisterNovedadesModel extends FlutterFlowModel<RegisterNovedadesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  // State field(s) for fecha_de_aplicacion widget.
  FocusNode? fechaDeAplicacionFocusNode;
  TextEditingController? fechaDeAplicacionController;
  String? Function(BuildContext, String?)? fechaDeAplicacionControllerValidator;
  // State field(s) for DescripcionTF widget.
  FocusNode? descripcionTFFocusNode;
  TextEditingController? descripcionTFController;
  String? Function(BuildContext, String?)? descripcionTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    fechaDeAplicacionFocusNode?.dispose();
    fechaDeAplicacionController?.dispose();

    descripcionTFFocusNode?.dispose();
    descripcionTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
