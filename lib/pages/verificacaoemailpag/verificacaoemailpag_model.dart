import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verificacaoemailpag_widget.dart' show VerificacaoemailpagWidget;
import 'package:flutter/material.dart';

class VerificacaoemailpagModel
    extends FlutterFlowModel<VerificacaoemailpagWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apiCadastraCliente)] action in ButtonVerificarEmail widget.
  ApiCallResponse? apiResult00h;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (validotp)] action in Column widget.
  ApiCallResponse? apiResultvaq;
  // Stores action output result for [Backend Call - API (apiEncaminharCodigoValidacao)] action in textReenviarCodigo widget.
  ApiCallResponse? apiResultcf2;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
