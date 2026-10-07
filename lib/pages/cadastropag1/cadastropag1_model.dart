import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastropag1_widget.dart' show Cadastropag1Widget;
import 'package:flutter/material.dart';

class Cadastropag1Model extends FlutterFlowModel<Cadastropag1Widget> {
  ///  Local state fields for this page.

  String? cpf;

  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for NOME_TF widget.
  FocusNode? nomeTfFocusNode;
  TextEditingController? nomeTfTextController;
  String? Function(BuildContext, String?)? nomeTfTextControllerValidator;
  String? _nomeTfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome é um campo obrigatório.';
    }

    if (!RegExp('^[A-Za-zÀ-ÖØ-öø-ÿ]+(\\s+[A-Za-zÀ-ÖØ-öø-ÿ]+)+\$')
        .hasMatch(val)) {
      return 'Insira seu nome completo com espaço entre os nome';
    }
    return null;
  }

  // State field(s) for EMAIL_TF widget.
  FocusNode? emailTfFocusNode;
  TextEditingController? emailTfTextController;
  String? Function(BuildContext, String?)? emailTfTextControllerValidator;
  String? _emailTfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'E-mail é um campo obrigatório.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Digite um Email válido!';
    }
    return null;
  }

  // State field(s) for CPF_TF widget.
  FocusNode? cpfTfFocusNode;
  TextEditingController? cpfTfTextController;
  String? Function(BuildContext, String?)? cpfTfTextControllerValidator;
  String? _cpfTfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'CPF é um campo obrigatório.';
    }

    if (val.length < 11) {
      return 'No menino 11 caracteres!';
    }

    return null;
  }

  // State field(s) for TELEFONE_TF widget.
  FocusNode? telefoneTfFocusNode;
  TextEditingController? telefoneTfTextController;
  String? Function(BuildContext, String?)? telefoneTfTextControllerValidator;
  String? _telefoneTfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Telefone é um campo obrigatório.';
    }

    if (val.length < 11) {
      return 'Digite um numero de telefone válido';
    }
    if (val.length > 12) {
      return 'coloque apenas numeros ex:9999999-9999';
    }

    return null;
  }

  // State field(s) for SENHA_TF widget.
  FocusNode? senhaTfFocusNode;
  TextEditingController? senhaTfTextController;
  late bool senhaTfVisibility;
  String? Function(BuildContext, String?)? senhaTfTextControllerValidator;
  String? _senhaTfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é um campo obrigatório.\n';
    }

    if (val.length < 8) {
      return '\"Mínimo 8 chars, 1 maiúscula, 1 nº e 1 símbolo.\"';
    }

    if (!RegExp(
            '^(?=.*[A-Z])(?=.*\\d)(?=.*[!@#\$%^&*()_+\\-=\\[\\]{};\':\\\\|,.<>\\/?]).{8,}\$')
        .hasMatch(val)) {
      return '\"Mínimo 8 chars, 1 maiúscula, 1 nº e 1 símbolo.\"';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (validacpfcadastrado)] action in Button widget.
  ApiCallResponse? apiResult3x8;

  @override
  void initState(BuildContext context) {
    nomeTfTextControllerValidator = _nomeTfTextControllerValidator;
    emailTfTextControllerValidator = _emailTfTextControllerValidator;
    cpfTfTextControllerValidator = _cpfTfTextControllerValidator;
    telefoneTfTextControllerValidator = _telefoneTfTextControllerValidator;
    senhaTfVisibility = false;
    senhaTfTextControllerValidator = _senhaTfTextControllerValidator;
  }

  @override
  void dispose() {
    nomeTfFocusNode?.dispose();
    nomeTfTextController?.dispose();

    emailTfFocusNode?.dispose();
    emailTfTextController?.dispose();

    cpfTfFocusNode?.dispose();
    cpfTfTextController?.dispose();

    telefoneTfFocusNode?.dispose();
    telefoneTfTextController?.dispose();

    senhaTfFocusNode?.dispose();
    senhaTfTextController?.dispose();
  }
}
