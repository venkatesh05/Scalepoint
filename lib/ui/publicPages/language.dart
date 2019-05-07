import 'package:flutter/material.dart';

import './authPages/checkin.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Scalepoint'),
        ),
        body: LanguageLayout());
  }
}

class LanguageLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _languageList(context);
  }

  Widget _languageList(BuildContext context) {
    final List<Map<String, String>> languageData = [
      {'title': 'Dansk', 'index': 'da'},
      {'title': 'English', 'index': 'en'},
      {'title': 'Svenska', 'index': 'sv'},
      {'title': 'Norsk', 'index': 'no'},
      {'title': 'Deutsch', 'index': 'de'}
    ];
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView.separated(
      itemCount: languageData.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text(languageData[index]['title']),
            onTap: () {
              print('language ' + languageData[index]['title']);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => CheckingPage(
                      languageData[index]['index'],
                      languageData[index]['title'])));
            });
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    ));
  }
}
