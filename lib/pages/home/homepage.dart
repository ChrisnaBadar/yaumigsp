import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22),
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.assignment_turned_in),
            onTap: () {
              Navigator.pushNamed(context, '/yaumiForm');
            },
            label: 'Yaumi',
            labelStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
          ),
          SpeedDialChild(
            child: const Icon(Icons.assignment_turned_in),
            onTap: () {
              Navigator.pushNamed(context, '/absenPage');
            },
            label: 'Absen',
            labelStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //user
            const Card(
              child: ListTile(
                title: Text('Nama'),
              ),
            ),

            //yaumi
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text('Tanggal: no ${index + 1}'),
                      ),
                    );
                  },
                ),
              ),
            )

            //absen
          ],
        ),
      ),
    );
  }
}
