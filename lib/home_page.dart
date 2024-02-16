import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isbts = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Bottom sheet task like google map"),
      ),
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return DraggableScrollableSheet(
                expand: false,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    color: Colors.white,
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text('Item $index '),
                        );
                      },
                    ),
                  );
                },
              );
            },
          );
        },
        child: Container(
          width: double.infinity,
          color: Colors.yellow.shade100,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          // decoration: const BoxDecoration(color: Colors.amber),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Welcome back,",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "ADITI KARKARE",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You can click anywhere on screen to open the bottomsheet, and scroll the list.!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
