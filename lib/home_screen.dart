import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                )
              ],
            ),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('Setting')),
                        PopupMenuItem(value: 3, child: Text('Logout')),
                      ])
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('Assets/DP.jpg'),
                      ),
                      title: Text(
                        'Adeel Ahmad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Assalamohalaikom..!'),
                      trailing: Text('10:30 PM'),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black45, width: 4)),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('Assets/DP.jpg'),
                              ),
                            ),
                            title: Text(
                              'My status',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Yesterday,  5:40 AM'),
                          ),
                          Divider(
                                height: 8,

                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Recent Updates'),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 4)),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('Assets/DP.jpg'),
                              ),
                            ),
                            title: Text(
                              'Adeel Ahmad',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('35 minutes ago'),
                          ),
                        ],
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.green, width: 4)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('Assets/DP.jpg'),
                          ),
                        ),
                        title: Text(
                          'Adeel Ahmad',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('35 minutes ago'),
                      );
                    }
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('Assets/DP.jpg'),
                      ),
                      title: Text(
                        'Adeel Ahmad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(index / 2 == 0
                          ? 'you missed audio call..'
                          : 'you missed video call..'),
                      trailing: Icon(index / 2 == 0
                          ? Icons.call
                          : Icons.missed_video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}
