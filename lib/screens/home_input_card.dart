import 'package:flutter/material.dart';

class HomeInputCard extends StatelessWidget {
  HomeInputCard({ Key key }) : super(key: key);
  final String dropdownValue = 'Kathmandu';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          alignment: Alignment.centerRight,
          children: <Widget>[
            OverflowBox(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                height: double.infinity,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0.5, 0.5),
                        colors: [Color.fromRGBO(153, 128, 250, 1), Color.fromRGBO(237, 76, 103, 1)],
                        tileMode: TileMode.clamp
                    )
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 1,
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  color: Color.fromRGBO(233, 127, 43, 1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        title: Text(
                          'Revolutionize your workspace',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      const ListTile(
                        contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                        title: Text(
                            'Dicover spaces that inspires your people\'s most meaningful and impactful work.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                        ),
                        child: DropdownInput(),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    constraints: BoxConstraints(
                        minWidth: double.infinity,
                        minHeight: 50
                    ),
                    child: RaisedButton(
                      color: Color.fromRGBO(6, 82, 221, 1),
                      onPressed: () {},
                      child: Text('Search',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
                    )
                ),
              ],
            ),
          ],
        )
    );
  }
}

class DropdownInput extends StatefulWidget {
  DropdownInput({ Key key }) : super(key: key);

  @override
  _DropdownInput createState() => _DropdownInput();
}

class _DropdownInput extends State<DropdownInput> {
  String dropdownValue = 'Kathmandu';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField<String> (
        decoration: InputDecoration.collapsed(hintText: ''),
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Kathmandu', 'Bhaktapur', 'Patan']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}