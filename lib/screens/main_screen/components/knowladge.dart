import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/knowladge_text.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class Knowladge extends StatelessWidget {
  const Knowladge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        SizedBox(width: defaultPadding / 2),
        KnowladgeText(title: 'Flutter, Dart'),
        KnowladgeText(title: 'UI / UX Knowladge'),
        KnowladgeText(title: 'Prinsip design knowladge'),
        KnowladgeText(title: 'Database knowladge'),
        KnowladgeText(title: 'Struktur data knowladge'),
        KnowladgeText(title: 'Git knowladge'),
      ],
    );
  }
}
