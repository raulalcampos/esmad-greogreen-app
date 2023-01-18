import 'package:flutter/material.dart';
import '../screens/contacts.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  // ignore: unused_field
  final bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.teal),
            backgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            title: Center(
              // ignore: prefer_const_constructors
              child: Text(
                'FAQ #Help',
                style: const TextStyle(color: Colors.teal),
              ),
            )),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.topCenter,
            child: const Text(
              'Do you have any questions?\n We will help you!',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 45),
          ExpansionTile(
            title: const Text('What is GeoGreen and what is it for?'),
            trailing: const Icon(Icons.arrow_drop_down
                //_customIcon
                //? Icons.arrow_drop_down_circle
                //  : Icons.arrow_drop_down,
                ),
            onExpansionChanged: (bool expanded) {},
            controlAffinity: ListTileControlAffinity.leading,
            children: const <Widget>[
              ListTile(
                title: Text(
                    'GeoGreen is an app that helps the user to find\n the nearest recycling point and the type of garbage that\n this recycling point can receive.'),
              ),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text('What are the functions of the GeoGreen?'),
            trailing: const Icon(Icons.arrow_drop_down
                //_customIcon
                //? Icons.arrow_drop_down_circle
                //  : Icons.arrow_drop_down,
                ),
            onExpansionChanged: (bool expanded) {},
            controlAffinity: ListTileControlAffinity.leading,
            children: const <Widget>[
              ListTile(
                title: Text(
                    '- Find recycling ecopoints;\n- Inform what type of waste each ecopoint supports;\n- Know my stats;\n- Help the community grow by creating new ecopoints;'),
              ),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text('Does GeoGreen store what user info?'),
            trailing: const Icon(Icons.arrow_drop_down
                //_customIcon
                //? Icons.arrow_drop_down_circle
                //  : Icons.arrow_drop_down,
                ),
            onExpansionChanged: (bool expanded) {},
            controlAffinity: ListTileControlAffinity.leading,
            children: const <Widget>[
              ListTile(
                  title: Text(
                'GeoGreen only stores your name, email, password, photo and notification preferences.\n\nAlthough we ask for access to your location, we do not store it in our database.',
              )),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text('Where does GeoGreen´s info come from?'),
            trailing: const Icon(Icons.arrow_drop_down
                //_customIcon
                //? Icons.arrow_drop_down_circle
                //  : Icons.arrow_drop_down,
                ),
            onExpansionChanged: (bool expanded) {},
            controlAffinity: ListTileControlAffinity.leading,
            children: const <Widget>[
              ListTile(
                  title: Text(
                      'We obtain information from municipalities, local companies that\n handle waste and from data provided by our users \nthrough the "community" function.')),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text('Which countries does GeoGreen works?'),
            trailing: const Icon(Icons.arrow_drop_down
                //_customIcon
                //? Icons.arrow_drop_down_circle
                //  : Icons.arrow_drop_down,
                ),
            onExpansionChanged: (bool expanded) {},
            controlAffinity: ListTileControlAffinity.leading,
            children: const <Widget>[
              ListTile(
                  title: Text(
                      'Currently, the GeoGreen app only works in Portugal.')),
            ],
          ),
          const SizedBox(height: 110),
          Container(
            alignment: Alignment.topCenter,
            child: const Text(
              'Need more help? Send us a message!',
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactPage()));
                }),
                child: const Text('CONTACT US'),
              )
            ],
          ),
        ])));
  }
}