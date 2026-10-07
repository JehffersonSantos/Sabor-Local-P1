import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'aviso_cpf_ja_cadastrado_model.dart';
export 'aviso_cpf_ja_cadastrado_model.dart';

class AvisoCpfJaCadastradoWidget extends StatefulWidget {
  const AvisoCpfJaCadastradoWidget({super.key});

  @override
  State<AvisoCpfJaCadastradoWidget> createState() =>
      _AvisoCpfJaCadastradoWidgetState();
}

class _AvisoCpfJaCadastradoWidgetState
    extends State<AvisoCpfJaCadastradoWidget> {
  late AvisoCpfJaCadastradoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoCpfJaCadastradoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 298.9,
      height: 298.83,
      decoration: BoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/saborlocal-v-jef-pa0gk3/assets/6zn3xtqlupwq/Novo_Pdddrojeto.png',
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
