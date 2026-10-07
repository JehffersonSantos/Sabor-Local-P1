import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscaCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaCEP',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class ApiCadastraClienteCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? cpf = '',
    String? telefone = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": ${nome == null ? 'null' : '"${escapeStringForJson(nome)}"'},
  "celular": ${telefone == null ? 'null' : '"${escapeStringForJson(telefone)}"'},
  "cpf": ${cpf == null ? 'null' : '"${escapeStringForJson(cpf)}"'},
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
  "senha": ${senha == null ? 'null' : '"${escapeStringForJson(senha)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCadastraCliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2SCd6T4a/cadastra_Cliente',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? cliente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class ApiEncaminharCodigoValidacaoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiEncaminharCodigoValidacao',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2SCd6T4a/SendGrid_Email',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCadastrarEnderecoCall {
  static Future<ApiCallResponse> call({
    String? logradouro = '',
    String? numero = '',
    int? clienteId,
    String? cep = '',
    String? bairro = '',
    String? complemento = '',
    String? referencia = '',
    String? cidade = '',
    String? estado = '',
    bool? padrao,
  }) async {
    final ffApiRequestBody = '''
{
  "logradouro": ${logradouro == null ? 'null' : '"${escapeStringForJson(logradouro)}"'},
  "numero": ${numero == null ? 'null' : '"${escapeStringForJson(numero)}"'},
  "cliente_id": ${clienteId},
  "cep": ${cep == null ? 'null' : '"${escapeStringForJson(cep)}"'},
  "bairro": ${bairro == null ? 'null' : '"${escapeStringForJson(bairro)}"'},
  "complemento": ${complemento == null ? 'null' : '"${escapeStringForJson(complemento)}"'},
  "referencia": ${referencia == null ? 'null' : '"${escapeStringForJson(referencia)}"'},
  "cidade": " ${escapeStringForJson(cidade)}",
  "estado": ${estado == null ? 'null' : '"${escapeStringForJson(estado)}"'},
  "padrao": ${padrao}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCadastrarEndereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2SCd6T4a/salvaEndereco',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidacpfcadastradoCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'validacpfcadastrado',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2SCd6T4a/verifica_cpf',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cpf': cpf,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic naocastrado(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ValidotpCall {
  static Future<ApiCallResponse> call({
    String? otp = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'validotp',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2SCd6T4a/valida_otp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'otp': otp,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic otp(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
