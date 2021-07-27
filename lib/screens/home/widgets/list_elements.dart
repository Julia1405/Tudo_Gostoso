import 'package:flutter/material.dart';

class ListElements extends StatelessWidget {
  final String title;
  final List<String> listOfElements;

  ListElements({
    required this.title,
    required this.listOfElements,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: buildList(listOfElements),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

List<Widget> buildList(List<String> itens) {
  List<Widget> listOfWidgets = [];
  itens.forEach((element) {
    listOfWidgets.add(
      Text(
        element,
      ),
    );
  });
  return listOfWidgets;
}
