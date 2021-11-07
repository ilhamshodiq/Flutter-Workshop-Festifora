import 'package:flutter/material.dart';
import 'package:workshop_festifora/views/components/item_detail_pinjaman.dart';
import 'package:workshop_festifora/views/components/tombol.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nama = "";
  String phone = "";
  String money = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("test"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 100,
              child: Image.asset("assets/images/hitagi.png"),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.pinkAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (v) {
                  nama = v;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Isi nama Kamu",
                  labelText: "Nama",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.pinkAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (v) {
                  phone = v;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "085XXXXXXXXX",
                  labelText: "No Telp",
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.pinkAccent,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (v) {
                  money = v;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "",
                  labelText: "Jumlah Uang",
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Tombol(
              color: Colors.green,
              title: "Simpan",
              function: () {
                setState(() {});
              },
            ),
            Tombol(
              color: Colors.yellow[400],
              title: "Hapus",
              function: () {
                setState(() {
                  nama = "-";
                  phone = "-";
                  money = "-";
                });
              },
            ),
            ItemDetailPinjaman(
              icon: Icons.person,
              detail: "Nama : ",
              value: nama,
            ),
            ItemDetailPinjaman(
              icon: Icons.phone,
              detail: "No Tlp : ",
              value: phone,
            ),
            ItemDetailPinjaman(
              icon: Icons.money,
              detail: "Jumlah Pinjaman : Rp ",
              value: money,
            ),
          ],
        ),
      ),
    );
  }
}
