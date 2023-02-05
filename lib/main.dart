import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Incription(),
  ));
}

class Incription extends StatefulWidget {
  const Incription({super.key});

  @override
  State<Incription> createState() => _IncriptionState();
}

List<String> latters = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
  '/',
  '?',
  '!',
  '+'
];
TextEditingController EnController = new TextEditingController();
TextEditingController DeController = new TextEditingController();
var key;

class _IncriptionState extends State<Incription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Plan Text To Cyper Text",
        ),
        leading: Icon(Icons.face),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(children: [
              Expanded(
                flex: 4,
                child: Text("Plain Text",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 19)),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    height: 40,
                    child: TextField(
                      controller: DeController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3)),
                          hintText: "Enter Plain Text"),
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                    ),
                  ))
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(children: [
              Expanded(
                flex: 4,
                child: Text("Cypher Text",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 19)),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    height: 40,
                    child: TextField(
                      controller: EnController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3)),
                          hintText: "Enter Cypher Text"),
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                    ),
                  ))
            ]),
          ),
          Container(
            child: Row(children: [
              Text(
                "Key",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
              Container(
                child: DropdownButton(
                  value: key,
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text("1"),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text("2"),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text("3"),
                    ),
                    DropdownMenuItem(
                      value: 4,
                      child: Text("4"),
                    ),
                    DropdownMenuItem(
                      value: 5,
                      child: Text("5"),
                    ),
                    DropdownMenuItem(
                      value: 6,
                      child: Text("6"),
                    ),
                    DropdownMenuItem(
                      value: 7,
                      child: Text("7"),
                    ),
                    DropdownMenuItem(
                      value: 8,
                      child: Text("8"),
                    ),
                    DropdownMenuItem(
                      value: 9,
                      child: Text("9"),
                    ),
                    DropdownMenuItem(
                      value: 10,
                      child: Text("10"),
                    )
                  ],
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                  onChanged: ((value) {
                    setState(() {
                      key = value;
                    });
                  }),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  var index;
                  var word = '';
                  setState(() {
                    if (key == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          action: SnackBarAction(
                            label: 'Action',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                          content: const Text('Fadlan soo dooro key kaaga !'),
                          duration: const Duration(milliseconds: 1500),
                          width: 280.0, // Width of the SnackBar.
                          padding: const EdgeInsets.symmetric(
                            horizontal:
                                8.0, // Inner padding for SnackBar content.
                          ),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      );
                    } else {
                      var strg = DeController.text;
                      var chars = strg.trim().split("");

                      chars.forEach((element) {
                        index = latters.indexOf(element) + key;
                        word += latters[index];
                      });
                      EnController.text = word;
                      DeController.clear();
                    }
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Encreypt"),
              ),
              SizedBox(
                width: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (key == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          action: SnackBarAction(
                            label: 'Action',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                          content: const Text('Fadlan soo dooro key kaaga !'),
                          duration: const Duration(milliseconds: 15),
                          width: 280.0, // Width of the SnackBar.
                          padding: const EdgeInsets.symmetric(
                            horizontal:
                                8.0, // Inner padding for SnackBar content.
                          ),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      );
                    } else {
                      var index;
                      var word = "";
                      var strg = EnController.text;

                      var chars = strg.trim().split("");
                      chars.forEach((element) {
                        index = latters.indexOf(element) - key;
                        word += latters[index];
                      });
                      DeController.text = word;
                      EnController.clear();
                    }
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Decrypt"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
