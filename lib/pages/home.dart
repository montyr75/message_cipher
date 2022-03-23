import 'package:flutter/material.dart';
import 'package:message_cipher/utils/cipher_utils.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _decodedCtrl = TextEditingController();
  final _encodedCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: _decodedCtrl,
                onChanged: (value) => _textChanged(),
                decoration: const InputDecoration(
                  labelText: "Decoded",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: _decodedCtrl.text.isNotEmpty ? () {
                      _encodedCtrl.text = alter(_decodedCtrl.text, encodeCodeUnit);
                      _decodedCtrl.clear();
                      _textChanged();
                    } : null,
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: _encodedCtrl.text.isNotEmpty ? () {
                      _decodedCtrl.text = alter(_encodedCtrl.text, decodeCodeUnit);
                      _encodedCtrl.clear();
                      _textChanged();
                    } : null,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TextField(
                controller: _encodedCtrl,
                onChanged: (value) => _textChanged(),
                decoration: const InputDecoration(
                  labelText: "Encoded",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _textChanged() {
    setState(() {});
  }
}
