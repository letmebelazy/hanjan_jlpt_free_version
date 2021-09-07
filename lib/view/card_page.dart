import 'package:flutter/material.dart';
import 'package:hanjan_jlpt_free_version/globals.dart';
import 'package:hanjan_jlpt_free_version/widget/card_page_custom_widget.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CardPageAppBar(),
      backgroundColor: baseGrey,
    );
  }
}
