import 'package:flutter/material.dart';

class InputName extends StatelessWidget {
  const InputName({
    Key key,
    @required this.origemCampo,
    @required this.metodoSet,
  }) : super(key: key);

  final String origemCampo;
  final Function metodoSet;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: new TextEditingController(text: origemCampo),
      onChanged: metodoSet,
    );
  }
}
