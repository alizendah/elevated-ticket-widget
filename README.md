[![pub package](https://img.shields.io/badge/pub-0.0.4-blue.svg)](https://pub.dev/packages/elevated_ticket_widget)

A Flutter package which will help you to generate ticket shaped widget with elevation, highly customizable and flexible.

## Features

- Highly customizable
- Easy to use

## Getting started

1. Add the dependency.

```yml
elevated_ticket_widget: ^0.0.4;
```

2. Import the package.

```Dart
import 'package:elevated_ticket_widget/elevated_ticket_widget.dart';
```

3. Use the widget in your code.

```Dart
ElevatedTicketWidget(
          height: 100,
          width: 100,
          elevation: 2,
          child: Text('Elevated Ticket Widget'),
        )
```

## Usage

**This full code is from the example folder. You can run the example to see.**

```dart
import 'package:elevated_ticket_widget/elevated_ticket_widget.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedTicketWidget(
              height: 500,
              width: 300,
              elevation: 1.5,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            boxShadow: const [
                              BoxShadow(color: Colors.black12),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.flight,
                                color: Colors.white,
                              ),
                              Text(
                                'ABC Airways',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'FLIGHT',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          'ABC123',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'BOARDING TIME',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          '11:30',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'GATE',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          '15',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SEAT',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Text(
                                          '11A',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'PASSANGER NAME',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                'JOHAN',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CLASS',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                'ECONOMY',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FROM',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                'ZEA',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TO',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                'ROME',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Text(
                          'DATE: ',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          '30NOV',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),                    
                    const Center(child: Text('E-TICKET 345-65647527457')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```