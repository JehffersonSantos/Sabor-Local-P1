import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_TF widget.
  FocusNode? emailTFFocusNode;
  TextEditingController? emailTFTextController;
  String? Function(BuildContext, String?)? emailTFTextControllerValidator;
  // State field(s) for senha_TF widget.
  FocusNode? senhaTFFocusNode;
  TextEditingController? senhaTFTextController;
  String? Function(BuildContext, String?)? senhaTFTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailTFFocusNode?.dispose();
    emailTFTextController?.dispose();

    senhaTFFocusNode?.dispose();
    senhaTFTextController?.dispose();
  }
}
