import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Título"),
      ),
      body: Text("aTeste"),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => log("Transferências"),
      ),
    )));
