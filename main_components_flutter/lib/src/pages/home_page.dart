import 'package:flutter/material.dart';
import 'package:main_components_flutter/src/pages/alert_page.dart';
import 'package:main_components_flutter/src/providers/menu_provider.dart';
import 'package:main_components_flutter/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _createLis(snapshot.data, context));
      },
    );
  }

  List<Widget> _createLis(List<dynamic> data, BuildContext context) {
    return data
        .map((opt) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(opt['texto']),
                  leading: getIcon(opt['icon']),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // Option 1
                    // final route = MaterialPageRoute(builder: (context) {
                    //   return AlertPage();
                    // });
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, opt['ruta']);
                  },
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
