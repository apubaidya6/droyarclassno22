import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Drawer",
            style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    //color: Colors.lightBlueAccent,
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-VYFDkZjpohe5cxhTzDYR0k9447isnxjUUw&usqp=CAU'),
                      fit: BoxFit.fill,
                    )
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('image/apubaidya.jpg'),
                  ),
                  accountName: Text("Apu Baidya",style: TextStyle(color: Colors.white),),
                  accountEmail: Text("apubaidyabd@gmail.com",style: TextStyle(color: Colors.white),),
                  otherAccountsPictures: [
                    Icon(Icons.wb_sunny,
                    color: Colors.blue,),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.group,size: 25.0),
                title: Text("New Groupe",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_page_outlined,size: 25.0),
                title: Text("Contacts",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("Contacts tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.call,size: 25.0),
                title: Text("Calls",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("Calls tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.emoji_people,size: 25.0),
                title: Text("People Nearby",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("People Nearby tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.save,size: 25.0),
                title: Text("Saved Messages",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("Saved Messages tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,size: 25.0),
                title: Text("Settings",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("Settings tapped");
                },
              ),
              Container(
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                leading: Icon(Icons.child_friendly,size: 25.0),
                title: Text("Invite Friends",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("Invite Friends tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_support_outlined,size: 25.0),
                title: Text("Telegram Features",style: TextStyle(fontSize: 15.0),),
                onTap: (){
                  print("Telegram Features tapped");
                },
              ),
            ],
          ),
        ),
        body: Center(child: Text("This is Drawer app",
          style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
