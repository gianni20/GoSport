import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:GoSport/palestre/calcio.dart';
import 'package:GoSport/palestre/danza.dart';
import 'package:GoSport/palestre/padel.dart';
import 'package:GoSport/palestre/tennis.dart';
import 'appbar.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: ListView(children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 1,
                  child: Image.asset('assets/images/calcio.gif')),
              Expanded(flex: 1,
                child: Image.asset('assets/images/tennis.gif'),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(2),
                      child: ElevatedButton(
                      onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => calcio())
                    );
                  },
                      child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text('CALCIO')),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(33, 118, 45, 1.0),
                        padding: EdgeInsets.all(10),
                      )
                  )
                  )
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(2),
                      child: ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tennis())
                    );
                  },
                      child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text('TENNIS')
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(210, 207, 50, 1.0),
                        padding: EdgeInsets.all(10),
                      )
                  )
                  )
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 1,
                  child: Image.asset('assets/images/padel.gif')
              ),
              Expanded(flex: 1,
                child: Image.asset('assets/images/danza.gif'),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(2),
                      child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => padel())
                        );
                      },
                      child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text('PADEL')),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(47, 154, 151, 1.0),
                        padding: EdgeInsets.all(10),
                      ) //style
                  )
                  )
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(2),
                      child:ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => danza())
                    );
                  },
                      child: const Padding(
                          padding: EdgeInsets.all(13),
                          child: Text('DANZA')
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(175, 50, 210, 1.0),
                        padding: EdgeInsets.all(10),
                      )
                  )
                  )
              ),
            ],
          ),
        ]
        )
    );
  }
}