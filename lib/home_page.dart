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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://instagram.fbnu2-1.fna.fbcdn.net/v/t51.2885-19/275211290_128814269673305_5821255512760284856_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbnu2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=yKxViblDjs4AX8pHiCQ&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfDF08vHeAlHe2Yy0MGhWrweLeFI6DSZV3HfyBfJLKLFlQ&oe=64161A18&_nc_sid=1527a3'),
              ),
              accountName: const Text('David Hildebrandt'),
              accountEmail: const Text('davihildebran@gmail.com'),
            ),
            ListTile(
              title: const Text('Início'),
              subtitle: const Text('Tela de início'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              title: const Text('Logout'),
              subtitle: const Text('Logout'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              title: const Text('Stack'),
              subtitle: const Text('Stack practice'),
              leading: const Icon(Icons.image_outlined),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/stack');
              },
            ),
            ListTile(
              title: const Text('List view'),
              subtitle: const Text('List view practice'),
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/list-view');
              },
            ),
            ListTile(
              title: const Text('Tinder'),
              subtitle: const Text('Tinder practice'),
              leading: const Icon(Icons.fireplace),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/tinder');
              },
            ),
          ],
        ),
      ),
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
