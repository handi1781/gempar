import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hehe/home.dart';
import 'package:hehe/login.dart';

class TambahIbuHamil extends StatefulWidget {
  const TambahIbuHamil({Key? key}) : super(key: key);

  @override
  State<TambahIbuHamil> createState() => _TambahIbuHamilState();
}

class _TambahIbuHamilState extends State<TambahIbuHamil> {
  final nama = TextEditingController();
  final nik = TextEditingController();
  final pembiayaan = TextEditingController();
  final tanggal = TextEditingController();
  final nojkn = TextEditingController();
  final alamat = TextEditingController();
  final darah = TextEditingController();
  final pekerjaan = TextEditingController();
  final pendidikan = TextEditingController();
  final telepon = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> tambah() async {
    if (nama.text.isNotEmpty &&
        nik.text.isNotEmpty &&
        pembiayaan.text.isNotEmpty &&
        tanggal.text.isNotEmpty &&
        nojkn.text.isNotEmpty &&
        alamat.text.isNotEmpty &&
        darah.text.isNotEmpty &&
        pekerjaan.text.isNotEmpty &&
        pendidikan.text.isNotEmpty &&
        telepon.text.isNotEmpty) {
      try {
        firestore.collection("ibuhamil").doc().set({
          "nama": nama.text,
          "nik": nik.text,
          "pembiayaan": pembiayaan.text,
          "tanggal": tanggal.text,
          "nojkn": nojkn.text,
          "alamat": alamat.text,
          "darah": darah.text,
          "pekerjaan": pekerjaan.text,
          "pendidikan": pendidikan.text,
          "telepom": telepon.text,
          "createdAt": DateTime.now().toIso8601String()
        });
      } catch (e) {
        print("error");
      }
    }
  }

  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(
                    0xFF427D9D,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    IconButton(
                      onPressed: () {
                        // Tambahkan logika untuk tombol kembali
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePages()),
                            (route) => false);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "HALO MAMA - Bidan",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
                height: height * 0.07,
                width: width,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF427D9D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Registrasi Ibu Hamil',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Color(0xFF427D9D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.width * 1.9,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      shrinkWrap: true,
                      // physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Data Ibu Hamil',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: nama,
                                decoration: InputDecoration(
                                    labelText: 'Nama',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: nik,
                                decoration: InputDecoration(
                                    labelText: 'NIK',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: pembiayaan,
                                decoration: InputDecoration(
                                    labelText: 'Pembiayaan',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: tanggal,
                                decoration: InputDecoration(
                                    labelText: 'Tanggal Lahir',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: nojkn,
                                decoration: InputDecoration(
                                    labelText: 'NO.JKN',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: alamat,
                                decoration: InputDecoration(
                                    labelText: 'Alamat',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: darah,
                                decoration: InputDecoration(
                                    labelText: 'Golongan Darah',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: pekerjaan,
                                decoration: InputDecoration(
                                    labelText: 'Pekerjaan',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: pendidikan,
                                decoration: InputDecoration(
                                    labelText: 'Pendidikan',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: telepon,
                                decoration: InputDecoration(
                                    labelText: 'Telepon',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                        // Add other TextFormField widgets here for each field
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () async {
                    // Navigate to the next page when button is pressed
                    await tambah();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePages(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff9BBEC8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: height * 0.08,
                    width: width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tambah Ibu Hamil',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
