import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_producto_update_widget.dart' show RegisterProductoUpdateWidget;
import 'package:flutter/material.dart';

class RegisterProductoUpdateModel
    extends FlutterFlowModel<RegisterProductoUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nameProduct widget.
  FocusNode? nameProductFocusNode;
  TextEditingController? nameProductController;
  String? Function(BuildContext, String?)? nameProductControllerValidator;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for Precio widget.
  FocusNode? precioFocusNode;
  TextEditingController? precioController;
  String? Function(BuildContext, String?)? precioControllerValidator;
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
    nameProductFocusNode?.dispose();
    nameProductController?.dispose();

    precioFocusNode?.dispose();
    precioController?.dispose();

    descripcionTFFocusNode?.dispose();
    descripcionTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
