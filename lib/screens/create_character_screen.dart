import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/components/my_gradient_button.dart';
import 'package:flutter_masterclass_advanced_app/components/my_text.dart';

class CreateCharacterScreen extends StatefulWidget {
  const CreateCharacterScreen({super.key});

  @override
  State<CreateCharacterScreen> createState() => _CreateCharacterScreenState();
}

class _CreateCharacterScreenState extends State<CreateCharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const MyTitleText('Create Character'),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //welcome message
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(labelText: 'Vocation'),
                ),
                const SizedBox(height: 16.0),
                MyGradientButton(
                    onPressed: () {}, child: const MyTitleText('Create'))
              ],
            )));
  }
}
