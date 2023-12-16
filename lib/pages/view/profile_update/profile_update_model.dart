import '/flutter_flow/flutter_flow_util.dart';
import 'profile_update_widget.dart' show ProfileUpdateWidget;
import 'package:flutter/material.dart';

class ProfileUpdateModel extends FlutterFlowModel<ProfileUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nombrecompleto widget.
  FocusNode? nombrecompletoFocusNode;
  TextEditingController? nombrecompletoController;
  String? Function(BuildContext, String?)? nombrecompletoControllerValidator;
  // State field(s) for EmailTF widget.
  FocusNode? emailTFFocusNode;
  TextEditingController? emailTFController;
  String? Function(BuildContext, String?)? emailTFControllerValidator;
  // State field(s) for domicilio widget.
  FocusNode? domicilioFocusNode;
  TextEditingController? domicilioController;
  String? Function(BuildContext, String?)? domicilioControllerValidator;
  // State field(s) for numerodetelefono widget.
  FocusNode? numerodetelefonoFocusNode;
  TextEditingController? numerodetelefonoController;
  String? Function(BuildContext, String?)? numerodetelefonoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nombrecompletoFocusNode?.dispose();
    nombrecompletoController?.dispose();

    emailTFFocusNode?.dispose();
    emailTFController?.dispose();

    domicilioFocusNode?.dispose();
    domicilioController?.dispose();

    numerodetelefonoFocusNode?.dispose();
    numerodetelefonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
