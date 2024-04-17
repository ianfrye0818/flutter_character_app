import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBodyText extends StatelessWidget {
  const MyBodyText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.kanit(
            textStyle: Theme.of(context).textTheme.bodyMedium));
  }
}

class MyHeadLineText extends StatelessWidget {
  const MyHeadLineText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),
        style: GoogleFonts.kanit(
            textStyle: Theme.of(context).textTheme.headlineMedium));
  }
}

class MyTitleText extends StatelessWidget {
  const MyTitleText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),
        style: GoogleFonts.kanit(
            textStyle: Theme.of(context).textTheme.titleMedium));
  }
}
