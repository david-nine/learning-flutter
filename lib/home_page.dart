import 'package:flutter/material.dart';
import 'package:hello_word/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [CustomSwitcher()],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text("Counter ${controller.value}"),
            Text("Counter $counter"),
            const CustomSwitcher(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                
                child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 10; i++)
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    margin: const EdgeInsets.all(10),
                  ),
              ],
            )),
            Container(
              height: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            //controller.increment();
            setState(() {
              counter++;
            });
          }),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            }));
  }
}
