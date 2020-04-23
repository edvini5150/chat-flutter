import 'package:chat/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());

  // Setando dados no Firestore
  // Firestore.instance.collection('mensagens').document().setData({
  //   'text': 'tudo bem?',
  //   'from': 'alguém',
  //   'read': false
  // });

  // Obtendo dados do Firestore - Todos os documents
  // QuerySnapshot snapshot = await Firestore.instance.collection('mensagens').getDocuments();
  // snapshot.documents.forEach((d){
  //   print(d.data);
  //   print(d.documentID);
  // });

  // Obtendo dados de um document específico
  // DocumentSnapshot docSnapshot = await Firestore.instance.collection('mensagens').document('msg1').get();
  // print(docSnapshot.data);

  // Obter atualização sempre que houver mudança em uma collection
  // Adicionar .document() para obter mudanças do document
  // Firestore.instance.collection('mensagens').snapshots().listen((dado){
  //   dado.documents.forEach((d){
  //     print(d.data);
  //   });
  // });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(color: Colors.blue)
      ),
      home: ChatScreen(),
    );
  }
}
