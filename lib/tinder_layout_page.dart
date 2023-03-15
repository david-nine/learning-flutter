import 'package:flutter/material.dart';

class TinderLayoutPage extends StatefulWidget {
  const TinderLayoutPage({Key? key}) : super(key: key);

  @override
  State<TinderLayoutPage> createState() => _TinderLayoutPageState();
}

class _TinderLayoutPageState extends State<TinderLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFf26a6a),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: SizedBox(
              width: 160,
              child: Image.network(
                'https://cdn.iconscout.com/icon/free/png-256/tinder-9-432475.png?f=webp&w=256',
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            'Location Charger',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Plugging app for Tinder',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Login with Facebook',
                    style: TextStyle(color: Color(0xFFf26a6a), fontSize: 15),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
