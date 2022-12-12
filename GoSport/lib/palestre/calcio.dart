import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../appbar.dart';

class calcio extends StatelessWidget {
  const calcio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(children: <Widget>[


        Padding(padding: EdgeInsets.fromLTRB(5, 20, 5, 0), child:
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), child:
                  Image.asset('assets/images/marsalacalcio.png', width: 150)
                ),
                Column(mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  const Text('Marsala Calcio',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 20),
                  ),
                  const Text('Stadio Antonino ',textAlign: TextAlign.start, style: TextStyle(
                    fontSize: 13,)
                  ),
                      const Text('Lombardo Angotta',textAlign: TextAlign.start, style: TextStyle(
                        fontSize: 13,)
                      ),
                      Padding(padding: EdgeInsets.all(2) , child:
                        OutlinedButton.icon(onPressed: _launchURL3, icon:
                          Icon(
                          Icons.web_rounded,
                          color: Color.fromRGBO(46, 120, 179, 1.0),
                          size: 20),
                          label: const Text('Sito Web')
                      )
                      ),
                      Padding(padding: EdgeInsets.all(2) , child:
                        OutlinedButton.icon(onPressed: _launchURL4, icon:
                          Icon(
                          Icons.local_phone_rounded ,
                          color: Color.fromRGBO(6, 201, 0, 1.0),
                          size: 20),
                          label: const Text('Telefono')
                      )
                      ),
                    ])
              ])
        ),


        const Padding(padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
            child: SizedBox(
                height: 1.5,
                width: 10,
                child: DecoratedBox(decoration: BoxDecoration(
              color: Color.fromRGBO(109, 109, 109, 0.50)
          )))
        ),


        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(5, 0, 10, 0), child:
            Image.asset('assets/images/piantoromano.png', width: 150)
          ),
          Column(mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Pianto Romano',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text('Via del Pianto Romano',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 13,)
                ),
                Padding(padding: EdgeInsets.all(2) , child:
                OutlinedButton.icon(onPressed: _launchURL, icon:
                Icon(
                    Icons.web_rounded,
                    color: Color.fromRGBO(46, 120, 179, 1.0),
                    size: 20),
                    label: const Text('Sito Web')
                )
                ),
                Padding(padding: EdgeInsets.all(2) , child:
                OutlinedButton.icon(onPressed: _launchURL0, icon:
                Icon(
                    Icons.local_phone_rounded ,
                    color: Color.fromRGBO(6, 201, 0, 1.0),
                    size: 20),
                    label: const Text('Telefono')
                )
                ),
              ])
        ]),


        const Padding(padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
            child: SizedBox(
                height: 1.5,
                width: 10,
                child: DecoratedBox(decoration: BoxDecoration(
                    color: Color.fromRGBO(109, 109, 109, 0.50)
                )))
        ),


        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(5, 0, 10, 0), child:
            Image.asset('assets/images/eracles.png', width: 150)
          ),
          Column(mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Bar Eracles',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text('Contrada Pontefiumarella,',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 13,)
                ),
                const Text('78/c',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 13,)
                ),
                Padding(padding: EdgeInsets.all(2) , child:
                  OutlinedButton.icon(onPressed: _launchURL1, icon:
                      Icon(
                      Icons.web_rounded,
                      color: Color.fromRGBO(46, 120, 179, 1.0),
                      size: 20),
                      label: const Text('Sito Web')
                    )
                  ),
                  Padding(padding: EdgeInsets.all(2) , child:
                    OutlinedButton.icon(onPressed: _launchURL2, icon:
                      Icon(
                      Icons.local_phone_rounded ,
                      color: Color.fromRGBO(6, 201, 0, 1.0),
                      size: 20),
                      label: const Text('Telefono')
                    )
                  ),
              ])
        ]),



      ])
    );
  }
}



_launchURL() async {
  const url = 'https://www.piantoromano.it/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL0() async {
  const url = 'tel:+393284145611';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL1() async {
  const url = 'https://www.facebook.com/bareracles/?ref=page_internal';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'tel:0923 960204';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://www.facebook.com/groups/549808628699432/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'tel:0923 960204';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}