import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AbsenPage extends StatefulWidget {
  const AbsenPage({super.key});

  @override
  State<AbsenPage> createState() => _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
  static var now = DateTime.now();
  var tanggal = DateFormat('EEEE, dd MMMM yyyy', "id_ID").format(now);
  var statusKehadiran = ['WFO', 'SAKIT', 'IJIN'];
  var kehadiran = '-';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10.0))),
                context: context,
                builder: (context) => SizedBox(
                      height: 250.0,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text('$tanggal'),
                          const SizedBox(
                            height: 16.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .80,
                            child: DropdownButton(
                                value: statusKehadiran.first,
                                elevation: 16,
                                items: statusKehadiran
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    kehadiran = val!;
                                  });
                                }),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text('SUBMIT'),
                                )),
                          )
                        ],
                      ),
                    ));
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const Card(
              child: ListTile(
                title: Text('Tanggal'),
                subtitle: Text('Status Kehadiran'),
              ),
            ),
          ),
        ));
  }
}
