import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/container_row_colum.dart';

class DrawerAndButton extends StatelessWidget {
  const DrawerAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.amber,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                    Text(
                      "User name",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "defaultuser@gmail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text("Finance"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.class_),
              title: Text("previous class"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerRowColum()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("about"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: Text(
                "logut",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              subtitle: Text("no account login right now"),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "this is elevated button",
                style: TextStyle(fontSize: 30),
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: Text(
                      "click here",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Text(
                "this is text button",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "text button",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Text(
                "this is icons elevated  button with BeveledRectangleBorder",
                style: TextStyle(fontSize: 25),
              ),
              Center(
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    icon: Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    label: Text(
                      "login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
