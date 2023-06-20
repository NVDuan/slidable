import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:slidable_app/User.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> users = [];

  @override
  void initState() {
    // TODO: implement initState
    users = List.of(allUser.users);
    super.initState();
  }
  removeData(index){
    setState(() {
      users.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter Slidable'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: users.length,
          itemBuilder: (context, index){
          return Slidable(
            key: ValueKey(index),
            startActionPane: ActionPane(
              dismissible: DismissiblePane(onDismissed: (){}),
              motion: const BehindMotion(),
              children: [
              SlidableAction(
              label: 'Delete',
              icon: Icons.delete, 
              backgroundColor: Colors.red.shade500,
              onPressed: (context) => { 
                removeData(index) },
              ),
              SlidableAction(
              icon: Icons.share, 
              backgroundColor: Colors.blue.shade500,
              onPressed: (context) => {  },
              ),
            ],
            ),
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
              SlidableAction(
              icon: Icons.message, 
              backgroundColor: Colors.lightBlue,
              onPressed: (context) => {  },
              ),
              SlidableAction(
              icon: Icons.call, 
              backgroundColor: Colors.lightGreen,
              onPressed: (context) => {  },
              ),
            ],
            ),
            child: ListTitle(index));
        },
        separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
 ListTitle(int index ) {
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(users[index].photo!),
    ),
    title: Text(users[index].name!),
    subtitle: Text(users[index].email!),
  );
  }
}