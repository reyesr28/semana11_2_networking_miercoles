import 'dart:developer';
import 'api/Service.dart';
import 'package:flutter/material.dart';

class vista1 extends StatelessWidget {
  const vista1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Networking 2'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),

      body: FutureBuilder(
          future: Service.getUsers(),
          builder: (context, AsyncSnapshot<List> snapshot){
            return ListView.builder(
              itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                var usu=snapshot.data![index];
                return Container(
                  height: 140,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 270,
                                child: Column(
                                  children: [
                                    Text('ID: ${usu.id.toString()}'),
                                    Text('LAST_NAME: ${usu.last_name.toString()}'),
                                    Text('FIRST_NAME: ${usu.first_name.toString()}'),
                                    Text('EMAIL: ${usu.email.toString()}'),
                                  ],
                                ),
                              ),
                            ),
                            Image.network('${usu.avatar}',width: 80, height: 80,)
                          ],
                        ),
                      )
                    ],
                  ),
                );
                });
          }),

    );
  }
}
