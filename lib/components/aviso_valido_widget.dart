import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'aviso_valido_model.dart';
export 'aviso_valido_model.dart';

class AvisoValidoWidget extends StatefulWidget {
  const AvisoValidoWidget({super.key});

  @override
  State<AvisoValidoWidget> createState() => _AvisoValidoWidgetState();
}

class _AvisoValidoWidgetState extends State<AvisoValidoWidget> {
  late AvisoValidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoValidoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/saborlocal-v2-jxvk62/assets/5fbiad0ix6bt/ddffe3e2-b1eb-4bdf-83fc-ded0c15821c0.png',
          width: 150.0,
          height: 159.07,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
