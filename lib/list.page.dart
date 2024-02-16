import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DummyListPage extends StatefulWidget {
  const DummyListPage({super.key});

  @override
  State<DummyListPage> createState() => _DummyListPageState();
}

class _DummyListPageState extends State<DummyListPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, index) => Card());
  }
}
