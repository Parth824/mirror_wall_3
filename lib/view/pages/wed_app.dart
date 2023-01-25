import 'package:flutter/material.dart';
import 'package:mirror_wall_3/view/pages/Globles.dart';
import 'package:mirror_wall_3/view/pages/wed_app_in.dart';



class WedApp extends StatefulWidget {
  const WedApp({super.key});

  @override
  State<WedApp> createState() => _WedAppState();
}

class _WedAppState extends State<WedApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTT Platforms Wed In App",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          ...sitd.k.map(
            (e) => InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WedAppIN(),
                      settings: RouteSettings(arguments: e),
                    ),
                  );
                });
              },
              child: Container(
                height: 125,
                width: 100,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "${e['i']}",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("${e['n']}")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}