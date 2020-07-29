import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componets Temp'),
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() {
    // Option 1
    // List<Widget> list = new List<Widget>();
    // for (String opt in options) {
    //   final tempWidget = ListTile(
    //     title: Text(opt),
    //   );
    //   list..add(tempWidget)..add(Divider());
    // }
    // return list;

    // Option 2
    return options
        .map((opt) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(opt),
                  subtitle: Text('aqui'),
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
