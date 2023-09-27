// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts/uts.dart';

class DetailProduk extends StatefulWidget {
  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  int selectedWarna2 = -1;
  @override
  Widget build(BuildContext context) {
    Widget Kotak(String title, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedWarna2 = index;
          });
        },
        child: Container(
            padding: EdgeInsets.all(
              16,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                    color: selectedWarna2 == index
                        ? Color.fromRGBO(0, 177, 79, 0.5)
                        : Colors.grey),
                color: selectedWarna2 == index
                    ? Color.fromRGBO(0, 177, 79, 0.5)
                    : Colors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff232D32)),
            )),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Iconsax.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Detail Produk',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Tambahkan aksi untuk ikon di sebelah kanan di sini
            },
            icon: Icon(
              Iconsax.heart5,
              color: Colors.red,
            ), // Ganti dengan ikon yang sesuai
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/Rectangle 6.png'),
                    SizedBox(height: 24),
                    Text(
                      'New Balance 992 Grey Original',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff292D32)),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(
                          Iconsax.star5,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 6),
                        Text(
                          '4.8',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff292D32)),
                        ),
                        SizedBox(width: 3),
                        Text(
                          '(102) | 67 Ulasan',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(height: 17),
                    RichText(
                        text: TextSpan(
                      text:
                          'Our Made US 992 men sneaker has heritage\nstyling,premium materials and comfort features to\nelevate your off-duty look. These men fashion\nSneakers have pigskin...',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Baca Selengkapnya',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.green,
                            ))
                      ],
                    )),
                    SizedBox(height: 17),
                    Text(
                      'Pilih Ukuran',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff292D32)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Kotak('39', 0),
                        SizedBox(width: 16),
                        Kotak('40', 1),
                        SizedBox(width: 16),
                        Kotak('41', 2),
                        SizedBox(width: 16),
                        Kotak('42', 3),
                        SizedBox(width: 16),
                        Kotak('43', 4)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Container(
          padding: EdgeInsets.only(left: 26, right: 24, top: 24, bottom: 24),
          decoration: BoxDecoration(
            border:Border.all(color: Color(0xffF2F2F7)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('RP1.240.000',style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff292D32)
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xff00B14F),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: TextButton(onPressed: () {}, child: Text('Tambah Keranjang',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
