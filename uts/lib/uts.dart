// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/detailprodul.dart';
import 'package:uts/keranjang.dart';

class UTS extends StatefulWidget {
  @override
  State<UTS> createState() => _UTSState();
}

class _UTSState extends State<UTS> {
  int selectedWarna = -1;
  @override
  Widget build(BuildContext context) {
    Widget Warna(String title, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedWarna = index;
          });
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            border: Border.all(
                color:
                    selectedWarna == index ? Color(0xff00B14F) : Colors.grey),
            color: selectedWarna == index ? Color(0xff00B14F) : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(title,
                style: TextStyle(
                    fontSize: 16,
                    color:
                        selectedWarna == index ? Colors.white : Colors.grey)),
          ),
        ),
      );
    }

    Widget Product(String img, String title, String harga) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailProduk(),
              ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img,
              height: 170,
              width: 170,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 12),
            Text(
              harga,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 48,
              width: 283,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Cari Pakaian Pria',
                    prefixIcon: Icon(
                      Iconsax.search_normal_1,
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              width: 23,
            ),
            Icon(
              Iconsax.notification,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Keranjang() ));
                },
                icon: Icon(
                  Iconsax.bag,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
            child: Column(children: [
              Image.asset('assets/Banner.png'),
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Kategori',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D32)),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff00B14F)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Warna('Semua', 0),
                    SizedBox(width: 11),
                    Warna('Kemeja', 1),
                    SizedBox(width: 11),
                    Warna('Sepatu', 2),
                    SizedBox(width: 11),
                    Warna('Aksesoris', 3)
                  ],
                ),
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  Row(
                    children: [
                      Product('assets/1.png', 'Batik Pria Lengan\nPanjang',
                          'Rp199.900'),
                      SizedBox(width: 17),
                      Product('assets/2.png', 'New Balance 992\nGrey Original',
                          'Rp1.240.000'),
                    ],
                  ),
                  Row(
                    children: [
                      Product('assets/3.png', 'Skinny Jeans Dark\nBlue Wanita',
                          'Rp379.000'),
                      SizedBox(width: 17),
                      Product('assets/4.png',
                          'Kacamata Baca\nAnti Radiasi Blue Rey', 'Rp125.000'),
                    ],
                  ),
                  Row(
                    children: [
                      Product(
                          'assets/5.png',
                          'Kemeja Pria Polos\nLengan Pendek Oxford',
                          'Rp119.000'),
                      SizedBox(width: 17),
                      Product('assets/6.png', 'Human Greatness\nHoodie Hitam',
                          'Rp299.000'),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.picture_frame), label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user), label: 'Profile'),
        ],
      ),
    );
  }
}
