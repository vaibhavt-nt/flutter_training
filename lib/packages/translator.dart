import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatorPackage extends StatefulWidget {
  const TranslatorPackage({super.key});

  @override
  State<TranslatorPackage> createState() => _TranslatorPackageState();
}

class _TranslatorPackageState extends State<TranslatorPackage> {
  final lan = TextEditingController();
  GoogleTranslator googleTranslator = new GoogleTranslator();
  String out = '';

  void trans() {
    googleTranslator.translate(lan.text, to: 'hi').then((output) {
          setState(() {
            out = output as String;
          });
          if (kDebugMode) {
            print(out);
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translator Example'),
      ),
      body: Column(
        children: [
          TextField(
            controller: lan,
          ),
          ElevatedButton(
              onPressed: () {
                trans();
              },
              child: Text('Translate')),
          Text(out)
        ],
      ),
    );
  }
}
