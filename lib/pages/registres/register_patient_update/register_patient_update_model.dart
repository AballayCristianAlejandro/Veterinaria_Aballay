import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_patient_update_widget.dart' show RegisterPatientUpdateWidget;
import 'package:flutter/material.dart';

class RegisterPatientUpdateModel
    extends FlutterFlowModel<RegisterPatientUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for NamePatient widget.
  FocusNode? namePatientFocusNode;
  TextEditingController? namePatientController;
  String? Function(BuildContext, String?)? namePatientControllerValidator;
  // State field(s) for PesoTF widget.
  FocusNode? pesoTFFocusNode;
  TextEditingController? pesoTFController;
  String? Function(BuildContext, String?)? pesoTFControllerValidator;
  // State field(s) for sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for Castrado widget.
  String? castradoValue;
  FormFieldController<String>? castradoValueController;
  // State field(s) for AlimentoTF widget.
  FocusNode? alimentoTFFocusNode;
  TextEditingController? alimentoTFController;
  String? Function(BuildContext, String?)? alimentoTFControllerValidator;
  // State field(s) for DescripcionTF widget.
  FocusNode? descripcionTFFocusNode;
  TextEditingController? descripcionTFController;
  String? Function(BuildContext, String?)? descripcionTFControllerValidator;
  // State field(s) for FechaNacTF widget.
  FocusNode? fechaNacTFFocusNode;
  TextEditingController? fechaNacTFController;
  String? Function(BuildContext, String?)? fechaNacTFControllerValidator;
  // State field(s) for UltimoCelo widget.
  FocusNode? ultimoCeloFocusNode;
  TextEditingController? ultimoCeloController;
  String? Function(BuildContext, String?)? ultimoCeloControllerValidator;
  // State field(s) for Idu widget.
  FocusNode? iduFocusNode;
  TextEditingController? iduController;
  String? Function(BuildContext, String?)? iduControllerValidator;
  // State field(s) for Raza widget.
  FocusNode? razaFocusNode;
  TextEditingController? razaController;
  String? Function(BuildContext, String?)? razaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    namePatientFocusNode?.dispose();
    namePatientController?.dispose();

    pesoTFFocusNode?.dispose();
    pesoTFController?.dispose();

    alimentoTFFocusNode?.dispose();
    alimentoTFController?.dispose();

    descripcionTFFocusNode?.dispose();
    descripcionTFController?.dispose();

    fechaNacTFFocusNode?.dispose();
    fechaNacTFController?.dispose();

    ultimoCeloFocusNode?.dispose();
    ultimoCeloController?.dispose();

    iduFocusNode?.dispose();
    iduController?.dispose();

    razaFocusNode?.dispose();
    razaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
