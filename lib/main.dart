import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: isDark ? Colors.purple.shade400 : Color(0xFF009C70),
          child: Icon(Icons.wb_sunny),
          onPressed: () {
            setState(() {
              isDark = !isDark;
            });
          },
        ),
        backgroundColor: isDark ? Colors.black : Color(0xFF009C70),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/yash.jpg'),
              ),
              Text(
                "Yashwanth Krishna",
                style: isDark
                    ? TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Pacifico',
                      )
                    : TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Pacifico',
                      ),
              ),
              Text(
                'Flutter Developer',
                style: isDark
                    ? TextStyle(
                        fontFamily: 'SansPro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        color: Colors.purple.shade400,
                      )
                    : TextStyle(
                        fontFamily: 'SansPro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        color: Colors.white,
                      ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: isDark ? Colors.purple.shade400 : Color(0xFF009C70),
                ),
              ),
              Card(
                  color: isDark ? Colors.white : Colors.black,
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color:
                          isDark ? Colors.purple.shade400 : Color(0xFF009C70),
                    ),
                    title: Text(
                      '+91 89390 72140',
                      style: TextStyle(
                        color: isDark ? Colors.black : Colors.white,
                        fontSize: 20,
                        fontFamily: 'SansPro',
                      ),
                    ),
                  )),
              Card(
                color: isDark ? Colors.white : Colors.black,
                margin: EdgeInsets.all(20),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: isDark ? Colors.purple.shade400 : Color(0xFF009C70),
                  ),
                  title: Text(
                    'yashwanthtron@gmail.com',
                    style: TextStyle(
                      color: isDark ? Colors.black : Colors.white,
                      fontSize: 20,
                      fontFamily: 'SansPro',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
