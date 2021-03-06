import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({ Key? key }) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Rakesh'),
            currentAccountPicture: CircleAvatar(
              //backgroundImage: AssetImage('images/king.jpg'),
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhqE5cDUt8EC16L20zFX4g5sIeRTCF1ryDHQ&usqp=CAU'),
            ), 
            accountEmail: Text('usermail@gmail.com')
            ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Group',
            onTilePressed: (){},
          ), 
          DrawerListTile(
            iconData: Icons.lock,
            title: 'New Secret Chat',
            onTilePressed: (){},
          ), 
          DrawerListTile(
            iconData: Icons.notifications,
            title: 'New Channel',
            onTilePressed: (){},
          ), 
          DrawerListTile(
            iconData: Icons.contacts,
            title: 'Contacts',
            onTilePressed: (){},
          ), 
          DrawerListTile(
            iconData: Icons.phone,
            title: 'Calls',
            onTilePressed: (){},
          ), 
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            onTilePressed: (){},
          ), 
           DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            onTilePressed: (){},
          ), 
          Divider(),

           DrawerListTile(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            onTilePressed: (){},
          ), 
           DrawerListTile(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            onTilePressed: (){},
          ), 
        ]
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget{
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}