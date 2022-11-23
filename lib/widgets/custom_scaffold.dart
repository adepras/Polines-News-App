import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  
  const CustomScaffold({Key? key, required this.body, required AppBar appBar}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            body,
            NewWidget(context),
          ],
        ),
      ),
    );
  }

  Card NewWidget(BuildContext context) {
    return Card(
            margin: const EdgeInsets.all(0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    'N',
                  style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16.0),
              ),
            ),
          );
  }
}