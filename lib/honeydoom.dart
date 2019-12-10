import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'jason.dart';

class HoneyDoom extends StatefulWidget {


  HoneyDoom({Key key}) : super(key: key);

  @override
  _HoneyDoomState createState() => _HoneyDoomState(
    
  );
}

class _HoneyDoomState extends State<HoneyDoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('HoneyDoom'),
         centerTitle: true,
         backgroundColor: Colors.amber,
         actions: <Widget>[
           IconButton(
             onPressed: (){},
             icon: Icon(Icons.search),
           )
         ],
       ),

body: new Container(
  padding: EdgeInsets.all(10),
      child:new Center(
        child: StreamBuilder(
          stream: Firestore.instance.collection("solicitudes_contacto").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return CircularProgressIndicator();
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                    color: Colors.amberAccent,
              
                  child: new Column(
                      
                    children: <Widget>[
                      
                      new Text(snapshot.data.documents[index].data['nombre'], style: TextStyle(fontSize: 30),),
                      new Text(snapshot.data.documents[index].data['apellido'], style: TextStyle(fontSize: 30),),
                      new Text(snapshot.data.documents[index].data['email'], style: TextStyle(fontSize: 30),),
                      new Text(snapshot.data.documents[index].data['telefono'], style: TextStyle(fontSize: 30),),
                      new Text(snapshot.data.documents[index].data['comentario'], style: TextStyle(fontSize: 30),),

                    
                    ],
                  ),
                );
              }
            );
          }
        )
      )
    )
  );


    
  }








}