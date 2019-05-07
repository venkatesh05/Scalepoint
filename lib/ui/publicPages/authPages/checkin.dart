import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckingPage extends StatelessWidget {
  final String index;
  final String title;
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
  FocusNode nodeThree = FocusNode();
  FocusNode nodeFour = FocusNode();

  CheckingPage(this.index, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Please checkin'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                "Mobile PIN and User login",
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 50.0,
                    child: TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      autofocus: true,
                      focusNode: nodeOne,
                      maxLength: 1,
                      decoration: InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onChanged: (data) {
                        FocusScope.of(context).requestFocus(nodeTwo);
                      },
                    ),
                  ),
                  Container(
                    width: 50.0,
                    child: TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      focusNode: nodeTwo,
                      maxLength: 1,
                      decoration: InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onChanged: (data) {
                        FocusScope.of(context).requestFocus(nodeThree);
                      },
                    ),
                  ),
                  Container(
                    width: 50.0,
                    child: TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      focusNode: nodeThree,
                      maxLength: 1,
                      decoration: InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onChanged: (data) {
                        FocusScope.of(context).requestFocus(nodeFour);
                      },
                    ),
                  ),
                  Container(
                    width: 50.0,
                    child: TextField(
                      focusNode: nodeFour,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      maxLength: 1,
                      decoration: InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onChanged: (data) {},
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                  maxLines: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
