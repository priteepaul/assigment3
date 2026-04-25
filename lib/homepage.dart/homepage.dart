import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true, // Material 3 enable
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  AppBar
      appBar: AppBar(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        title: const Text("HomePage"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),

      // Floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add something",
        backgroundColor: const Color.fromARGB(187, 18, 137, 150),
        foregroundColor: const Color.fromARGB(203, 255, 255, 255),
        child: const Icon(Icons.add),
      ),

      //  Drawer
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Pritee Paul"),
              accountEmail: Text("pritee30@email.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            ),

            ListTile(leading: Icon(Icons.search), title: Text("Search")),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
          ],
        ),
      ),

      //Body
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 🔷 Card Box
            Container(
              height: 122,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(
                  color: const Color.fromARGB(247, 0, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 5, offset: Offset(2, 3)),
                ],
              ),
              child: const Center(
                child: Text(
                  "Hello! Welcome ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 20),

            //  Button
            ElevatedButton(onPressed: () {}, child: const Text("Click Me")),
          ],
        ),
      ),
    );
  }
}
