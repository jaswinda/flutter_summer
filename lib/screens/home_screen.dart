import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            for (int i = 0; i < 100; i++)
              SizedBox(
                height: 200,
                width: Get.width / 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.network("https://blog.mytripary.com/wp-content/uploads/2022/05/Pokhara-valley-nepal.jpg"),
                        const Text("ICP", style: TextStyle(fontSize: 30, color: Colors.amber)),
                        const Text("Loream impsum", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    )
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
