import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastropag2_widget.dart' show Cadastropag2Widget;
import 'package:flutter/material.dart';

class Cadastropag2Model extends FlutterFlowModel<Cadastropag2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CEP_TF widget.
  FocusNode? cepTfFocusNode;
  TextEditingController? cepTfTextController;
  String? Function(BuildContext, String?)? cepTfTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscaCEP)] action in CEP_TF widget.
  ApiCallResponse? respdaContaViaCep;
  // State field(s) for Logradouro_TF widget.
  FocusNode? logradouroTFFocusNode;
  TextEditingController? logradouroTFTextController;
  String? Function(BuildContext, String?)? logradouroTFTextControllerValidator;
  // State field(s) for Numero_TF widget.
  FocusNode? numeroTFFocusNode;
  TextEditingController? numeroTFTextController;
  String? Function(BuildContext, String?)? numeroTFTextControllerValidator;
  // State field(s) for Bairro_TF widget.
  FocusNode? bairroTFFocusNode;
  TextEditingController? bairroTFTextController;
  String? Function(BuildContext, String?)? bairroTFTextControllerValidator;
  // State field(s) for UF_TF widget.
  FocusNode? ufTfFocusNode;
  TextEditingController? ufTfTextController;
  String? Function(BuildContext, String?)? ufTfTextControllerValidator;
  // State field(s) for COMPLEMENTO_TF widget.
  FocusNode? complementoTfFocusNode;
  TextEditingController? complementoTfTextController;
  String? Function(BuildContext, String?)? complementoTfTextControllerValidator;
  // State field(s) for Cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiCadastraCliente)] action in SeguirButton widget.
  ApiCallResponse? apicadastracliente;
  // Stores action output result for [Backend Call - API (apiEncaminharCodigoValidacao)] action in SeguirButton widget.
  ApiCallResponse? apiResultwcu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cepTfFocusNode?.dispose();
    cepTfTextController?.dispose();

    logradouroTFFocusNode?.dispose();
    logradouroTFTextController?.dispose();

    numeroTFFocusNode?.dispose();
    numeroTFTextController?.dispose();

    bairroTFFocusNode?.dispose();
    bairroTFTextController?.dispose();

    ufTfFocusNode?.dispose();
    ufTfTextController?.dispose();

    complementoTfFocusNode?.dispose();
    complementoTfTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();
  }
}
