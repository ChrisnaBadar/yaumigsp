import 'package:flutter/material.dart';

class YaumiForm extends StatefulWidget {
  const YaumiForm({super.key});

  @override
  State<YaumiForm> createState() => _YaumiFormState();
}

class _YaumiFormState extends State<YaumiForm> {
  var shubuh = false;
  var dhuhur = false;
  var ashar = false;
  var maghrib = false;
  var isya = false;
  var tahajud = 0.0;
  var dhuha = 0.0;
  var rawatib = 0.0;
  var tilawah = 0.0;
  var shaum = false;
  var sedekah = false;
  var dzikirPagi = false;
  var dzikirPetang = false;
  var taklim = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: const SizedBox(
          child: Text('SUBMIT'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //fardhu
            Card(
              child: ListTile(
                title: const Text('Shalat Shubuh'),
                trailing: Switch(
                    value: shubuh,
                    onChanged: (val) {
                      setState(() {
                        shubuh = val;
                      });
                    }),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Shalat Dhuhur'),
                trailing: Switch(
                    value: dhuhur,
                    onChanged: (val) {
                      setState(() {
                        dhuhur = val;
                      });
                    }),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Shalat Ashar'),
                trailing: Switch(
                    value: ashar,
                    onChanged: (val) {
                      setState(() {
                        ashar = val;
                      });
                    }),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Shalat Maghrib'),
                trailing: Switch(
                    value: maghrib,
                    onChanged: (val) {
                      setState(() {
                        maghrib = val;
                      });
                    }),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Shalat Isya'),
                trailing: Switch(
                    value: isya,
                    onChanged: (val) {
                      setState(() {
                        isya = val;
                      });
                    }),
              ),
            ),

            //tahajud
            Card(
              child: ListTile(
                title: const Text('Shalat Tahajud'),
                subtitle: Slider(
                  onChanged: (double value) {
                    setState(() {
                      tahajud = value;
                    });
                  },
                  max: 11,
                  divisions: 11,
                  value: tahajud,
                ),
                trailing: Text('${tahajud.toInt()}'),
              ),
            ),

            //dhuha
            Card(
              child: ListTile(
                title: const Text('Shalat Dhuha'),
                subtitle: Slider(
                  onChanged: (double value) {
                    setState(() {
                      dhuha = value;
                    });
                  },
                  max: 4,
                  divisions: 4,
                  value: dhuha,
                ),
                trailing: Text('${dhuha.toInt()}'),
              ),
            ),

            //rawatib
            Card(
              child: ListTile(
                title: const Text('Shalat Rawatib'),
                subtitle: Slider(
                  onChanged: (double value) {
                    setState(() {
                      rawatib = value;
                    });
                  },
                  max: 10,
                  divisions: 10,
                  value: rawatib,
                ),
                trailing: Text('${rawatib.toInt()}'),
              ),
            ),

            //tilawah
            Card(
              child: ListTile(
                title: const Text('Halaman Tilawah Qur\'an'),
                subtitle: Slider(
                  onChanged: (double value) {
                    setState(() {
                      tilawah = value;
                    });
                  },
                  max: 20,
                  divisions: 20,
                  value: tilawah,
                ),
                trailing: Text('${tilawah.toInt()}'),
              ),
            ),

            //shaum
            Card(
              child: ListTile(
                title: const Text('Shaum Sunnah'),
                trailing: Switch(
                    value: shaum,
                    onChanged: (val) {
                      setState(() {
                        shaum = val;
                      });
                    }),
              ),
            ),

            //sedekah
            Card(
              child: ListTile(
                title: const Text('Sedekah'),
                trailing: Switch(
                    value: sedekah,
                    onChanged: (val) {
                      setState(() {
                        sedekah = val;
                      });
                    }),
              ),
            ),

            //dzikir
            Card(
              child: ListTile(
                title: const Text('Dzikir Pagi'),
                trailing: Switch(
                    value: dzikirPagi,
                    onChanged: (val) {
                      setState(() {
                        dzikirPagi = val;
                      });
                    }),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Dzikir Petang'),
                trailing: Switch(
                    value: dzikirPetang,
                    onChanged: (val) {
                      setState(() {
                        dzikirPetang = val;
                      });
                    }),
              ),
            ),

            //taklim
            Card(
              child: ListTile(
                title: const Text('Taklim'),
                trailing: Switch(
                    value: taklim,
                    onChanged: (val) {
                      setState(() {
                        taklim = val;
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
