import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TICKET"),
      ),
      body: const Center(
        child: Text("My Body"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
