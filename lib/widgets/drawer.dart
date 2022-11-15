import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'manish',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '8094705928',
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.grey[900],
              leading: Text(
                'KIDS MODE',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              trailing: ToggleButtons(
                children: [
                  Icon(Icons.toggle_off),
                ],
                isSelected: [false],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.download,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Downloads',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                      Text(
                        'Watch vedios offline',
                        style: TextStyle(color: Colors.white60,fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.watch_later,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Watchlist',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                      Text(
                        'Save to watch later',
                        style: TextStyle(color: Colors.white60,fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prize',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                      Text(
                        'Prizes you have won',
                        style: TextStyle(color: Colors.white60,fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.network_cell,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Channels',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Languages',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.face_sharp,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Genres',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Preferences',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Help',
                        style: TextStyle(fontSize: 16, color: Colors.white60),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}