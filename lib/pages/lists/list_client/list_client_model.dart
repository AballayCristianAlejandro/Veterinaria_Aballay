import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_client_widget.dart' show ListClientWidget;
import 'package:flutter/material.dart';

class ListClientModel extends FlutterFlowModel<ListClientWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBarcliente widget.
  FocusNode? searchBarclienteFocusNode;
  TextEditingController? searchBarclienteController;
  String? Function(BuildContext, String?)? searchBarclienteControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarclienteFocusNode?.dispose();
    searchBarclienteController?.dispose();

    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
