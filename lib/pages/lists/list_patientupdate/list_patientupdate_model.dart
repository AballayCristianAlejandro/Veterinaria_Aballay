import '/flutter_flow/flutter_flow_util.dart';
import 'list_patientupdate_widget.dart' show ListPatientupdateWidget;
import 'package:flutter/material.dart';

class ListPatientupdateModel extends FlutterFlowModel<ListPatientupdateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
