import 'package:flutter/material.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.blue[700],
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi Chhaily!",
          style: TextStyle(
            fontSize: 23.0,
            color: Colors.white,
          )
          ),
          SizedBox(height: 10.0,),
          Text('09 Mar, 2024', 
          style: TextStyle(
            fontSize: 16, 
            color: Colors.black26,
          ),)
        ],
      ),
    );
  }
}
