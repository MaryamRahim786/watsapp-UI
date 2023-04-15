import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
          backgroundColor: const Color.fromARGB(255, 16, 17, 16),
          title: const Text('WhatsApp'),
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
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 8,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('Settings')),
                      PopupMenuItem(value: '3', child: Text('Logout')),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // Container(
            //   height: 60,
            //   width: 100,
            //   decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       border: Border.all(
            //         color: Colors.green,
            //         width: 2,
            //       )),
            //   child: const CircleAvatar(
            //       backgroundImage: NetworkImage(
            //     'https://images.pexels.com/photos/3736855/pexels-photo-3736855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            //   )),
            // ),
            // const Text('Camera'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                width: 100,
                child: Image(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/3736855/pexels-photo-3736855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
              ),
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                      title: Text('Active User'),
                      subtitle: Text('Hows everything'),
                      trailing: Text('6.46 PM'),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                            width: 20,
                          ),
                          const Text(
                            '    New updates',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 175, 76, 117),
                                    width: 2,
                                  )),
                              child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                            ),
                            title: const Text('Active User'),
                            subtitle: const Text('35m ago'),
                            trailing: const Text('6.46 PM'),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 9.0),
                          //   child: Divider(
                          //     thickness: 2,
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            )),
                        child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                      ),
                      title: const Text('Active User'),
                      subtitle: const Text('35m ago'),
                      trailing: const Text('6.46 PM'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                    title: const Text('Active User'),
                    subtitle: Text(index / 2 == 0
                        ? 'you missed audio call'
                        : 'call time is 12.25'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
