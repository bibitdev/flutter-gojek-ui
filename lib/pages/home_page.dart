import 'package:flutter/material.dart';
import 'package:flutter_gojek_ui/components/gopay.dart';
import 'package:flutter_gojek_ui/components/header.dart';
import 'package:flutter_gojek_ui/components/search.dart';
import 'package:flutter_gojek_ui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          Search(),
          Gopay(),
        ],
      )),
    );
  }
}
