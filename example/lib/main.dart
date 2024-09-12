import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:iana_time_zone/iana_time_zone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IANA TimeZone Plugin example app'),
        ),
        body: Center(
          child: FutureBuilder(future: IanaTimeZone.getIanaTimeZone, builder:
          (context,snapshot){
            if(snapshot.connectionState==ConnectionState.done) {
              return Text('${snapshot.data}');
            }else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }  else{
              return const CircularProgressIndicator();
            }
          }
          ),
        ),
      ),
    );
  }
}
