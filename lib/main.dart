import 'package:flutter/material.dart';
import 'detail_page.dart';

void main() {
  runApp(
      MaterialApp(
          title: "App",
          home: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {

  //menentukan variabel untuk dikirim
  String title = "ARSENAL JAYA";
  String desc = "SELALU DI HATI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persiapan Gaji 30JT"),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),
      ),
      body: Center(
        //membuat tombol
        child: ElevatedButton(
          //aksi yang akan dijalankan saat tombol diklik/ditekan
            onPressed: () {
              //navigator.push adalah fungsi di flutter untuk berpindah halaman
              Navigator.push(
                context,
                // DetailPage adalah halaman yang dituju
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: title,
                      desc: desc,
                    )
                ),
              );
            },
            child: Text("Siap-siap jangan kaget")),
      ),
    );
  }
}