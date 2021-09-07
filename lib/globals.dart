import 'package:flutter/material.dart';
import 'package:hanjan_jlpt_free_version/model/word.dart';
import 'package:hanjan_jlpt_free_version/model/word_data.dart';

const List<int> levelList = [5, 4, 3];
Map<int, List<Word>> dataMap = {5: n5Data, 4: n4Data, 3: n3Data};
const Color baseRed = Color.fromRGBO(210, 69, 70, 1);
const Color baseGrey = Color.fromRGBO(180, 166, 152, 1);
const TextStyle appBarTextStyle = TextStyle(color: Colors.white, fontFamily: 'S-CoreDream');
const BorderSide levelBorderSide = BorderSide(color: Colors.white, width: 1.5);