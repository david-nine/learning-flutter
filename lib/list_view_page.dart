import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final list = <String>[];

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: TextField(controller: controller,)),
                  IconButton(onPressed: () {
                    setState(() {
                      list.add(controller.text);
                    });
                    controller.clear();
                  }, icon: const Icon(Icons.add))
                ],
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final item = list[index];
                        return ListTile(
                          title: Text(item),
                        );
                      }))
            ],
          ),
        ));
  }
}
