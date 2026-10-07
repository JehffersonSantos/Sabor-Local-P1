import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'aviso_invalido_model.dart';
export 'aviso_invalido_model.dart';

class AvisoInvalidoWidget extends StatefulWidget {
  const AvisoInvalidoWidget({super.key});

  @override
  State<AvisoInvalidoWidget> createState() => _AvisoInvalidoWidgetState();
}

class _AvisoInvalidoWidgetState extends State<AvisoInvalidoWidget> {
  late AvisoInvalidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoInvalidoModel());
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
          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/saborlocal-v2-jxvk62/assets/0ty7x7wi8219/Sem_T%C3%ADtulo-1_(1).png',
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
