import '/flutter_flow/flutter_flow_util.dart';
import 'registrer_widget.dart' show RegistrerWidget;
import 'package:flutter/material.dart';

class RegistrerModel extends FlutterFlowModel<RegistrerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for NameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  // State field(s) for EmailTF widget.
  FocusNode? emailTFFocusNode;
  TextEditingController? emailTFController;
  String? Function(BuildContext, String?)? emailTFControllerValidator;
  // State field(s) for PasswordTF widget.
  FocusNode? passwordTFFocusNode;
  TextEditingController? passwordTFController;
  late bool passwordTFVisibility;
  String? Function(BuildContext, String?)? passwordTFControllerValidator;
  // State field(s) for ConfirmPassTF widget.
  FocusNode? confirmPassTFFocusNode;
  TextEditingController? confirmPassTFController;
  late bool confirmPassTFVisibility;
  String? Function(BuildContext, String?)? confirmPassTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordTFVisibility = false;
    confirmPassTFVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameTFFocusNode?.dispose();
    nameTFController?.dispose();

    emailTFFocusNode?.dispose();
    emailTFController?.dispose();

    passwordTFFocusNode?.dispose();
    passwordTFController?.dispose();

    confirmPassTFFocusNode?.dispose();
    confirmPassTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
