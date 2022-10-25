import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  //constructor
  DetailPage({required this.title,  required this.desc});

  //properti
  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //menampilkan title yang dikirm
            Text(title, style: TextStyle(fontSize: 25),),
            //menampilkan desc
            Text(desc),
            ElevatedButton(
              //Navigator.pop() digunakan untuk kembali ke halaman sebelumnya
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            )
          ],
        ),
      ),
    );
  }
}