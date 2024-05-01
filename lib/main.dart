import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool se3=true;
  bool se2=true;
  bool ct=true;
  bool algorithms=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("CheckboxListTile"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(21),
        child: Column(
          children: [
            const Text("Do you like?",
            style: TextStyle(color: Colors.red,fontSize: 25),),
            CheckboxListTile(
              secondary: se3?
                const Icon(Icons.circle,color:Colors.red):
               const Icon(Icons.circle,color:Colors.lime),
              activeColor: Colors.red,
              checkColor: Colors.white,
              tileColor: Colors.green,
              title: const Text("Software Engineering 3"),
                value: se3,
                onChanged: (newValue){
                setState(() {
                  se3=newValue!;
                });
                }),
            CheckboxListTile(
                secondary: se2?
                const Icon(Icons.circle,color:Colors.red):
                const Icon(Icons.circle,color:Colors.lime),
                activeColor: Colors.red,
                checkColor: Colors.white,
                tileColor: Colors.teal,
                title: const Text("Software Engineering 2"),
                value: se2,
                onChanged: (newValue){
                  setState(() {
                    se2=newValue!;
                  });
                }),
            CheckboxListTile(
                secondary: ct?
                const Icon(Icons.circle,color:Colors.red):
                const Icon(Icons.circle,color:Colors.lime),
                activeColor: Colors.red,
                checkColor: Colors.white,
                tileColor: Colors.amber,
                title: const Text("Complexity Theory"),
                value: ct,
                onChanged: (newValue){
                  setState(() {
                    ct=newValue!;
                  });
                }),
            CheckboxListTile(
                secondary: algorithms?
                const Icon(Icons.circle,color:Colors.red):
                const Icon(Icons.circle,color:Colors.lime),
                activeColor: Colors.red,
                checkColor: Colors.white,
                tileColor: Colors.blue,
                title: const Text("Algorithms"),
                value: algorithms,
                onChanged: (newValue){
                  setState(() {
                    algorithms=newValue!;
                  });
                }),


          ],

        ),
      ),
    );
  }
}
