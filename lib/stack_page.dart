import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackPage'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover,),
          ),
          Container(
            color: Colors.black.withOpacity(0.40),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: const FlutterLogo(
                    size: 150,
                    style: FlutterLogoStyle.horizontal,
                  ),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                }, child: const Text('Open app'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
