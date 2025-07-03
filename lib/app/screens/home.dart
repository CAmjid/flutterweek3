import 'package:flutter/material.dart';
import 'package:taskweek3/app/screens/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/image/Extraction_2_Key_Art_2_English_1684309049.jpg',
      'assets/image/maxresdefault.jpg',
      'assets/image/OIP (1).webp',
      'assets/image/OIP.webp',
      'assets/image/wp5916997.jpg',
      'assets/image/wp9049761.jpg',
      'assets/image/pdhOE0NAZaPzjsgTvatRP1xFhG3.webp',
      'assets/image/R.jpeg',
      'assets/image/rgno01ixB1OBcSHIOnHGlyu2Dqv.jpg',
      'assets/image/1335882256_duke_305287.jpeg'

    ];
    List<String> names = [
      'Extraction 2',
      'Walking Dead City',
      'Avatar 2',
      'Hercules',
      'Thor',
      'Maortal Engines',
      'Avengers',
      'Pirates of Carriebien',
      'John wick chapter 4 ',
      'G.i.joe '

    ];

    List<String> year = ['2022', '2016', '2024', '2022', '2018', '2020','2018','2019','2017','2023'];

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout'),
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        title: const Text(" Logout"),
                        content: const Text("Are you sure you want to logout?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: const Text("ok"),
                          ),
                        ],
                      ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,

        centerTitle: true,
        title: const Text(
          'Movies',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.movie),
            title: Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            subtitle: Text(names[index], style: TextStyle(fontSize: 15)),
            trailing: Text(year[index], style: const TextStyle(fontSize: 16)),
          );
        },
      ),
    );
  }
}
