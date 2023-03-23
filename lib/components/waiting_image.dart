import 'package:flutter/material.dart';

class WaitingImage extends StatelessWidget {
  final String label;
  final TextStyle labelTextStyle;

  const WaitingImage({
    this.label,
    this.labelTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              label,
              style: labelTextStyle,
              // 'Nenhuma Transação Cadastrada!',
              // style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 20),
            Container(
               height: constraints.maxHeight * 0.6,
              //height: proportionateSize,
              child: Image.asset(
                'assets/images/waiting.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        );
      },
    );
  }
}
