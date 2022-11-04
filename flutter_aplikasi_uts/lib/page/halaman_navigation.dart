// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_uts/route/app_pages.dart';
import 'package:flutter_aplikasi_uts/shared/themes.dart';
import 'package:flutter_aplikasi_uts/shared/widget/appbar_custom.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlue,
      body: ListView(children: [
        profile(),
        navigation(),
        buttonLogout(),
      ]),
    );
  }

  Widget profile() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/profil.jpeg'),
            radius: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'naufalfasyaf',
            style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Naufal Fasya Faddillah',
            style: whiteTextStyle.copyWith(fontSize: 15, fontWeight: light),
          ),
        ],
      ),
    );
  }

  Widget navigation() {
    return Container(
      width: Get.width,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [,
          navigationItem(
            "Dashboard",
            "images",
            () => Get.toNamed(AppPages.NAVIGATION),
            kWhiteColor,
            redTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          navigationItem(
            "Kegiatan Universitas",
            "assets/images/Vector-3.png",
            () => Get.toNamed(AppPages.PROFILE_PAGE),
            kRedColor,
            whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          navigationItem(
            "Pencapaian Universitas",
            "assets/images/Vector-4.png",
            () => Get.toNamed(AppPages.SOCIAL_NETWORK_PAGE),
            kWhiteColor,
            redTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          navigationItem(
            "Dosen & Mahasiswa",
            "assets/images/Vector-5.png",
            () => Get.toNamed(AppPages.MEDIA_GALLERY_PAGE),
            kRedColor,
            whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          navigationItem(
            "Sarana & Prasarana",
            "assets/images/Vector-6.png",
            () => Get.toNamed(AppPages.DOCUMENT_PAGE),
            kWhiteColor,
            redTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          navigationItem(
            "Sarana & Prasarana",
            "assets/images/Vector-6.png",
            () => Get.toNamed(AppPages.NETWORK_MAPS_PAGE),
            kWhiteColor,
            redTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
        ],
      ),
    );
  }

  Widget navigationItem(String name, String image, Function() onPressed,
      Color colors, TextStyle textStyled) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: Get.width,
        decoration: BoxDecoration(color: colors),
        child: Row(
          children: [
            Image.asset(
              image,
              // "assets/images/Vector-2.png",
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              name,
              style: textStyled,
            )
          ],
        ),
      ),
    );
  }

  Widget buttonLogout() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppPages.LOGIN);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: 90,
              decoration: BoxDecoration(
                  color: kRedColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Logout",
                  style: whiteTextStyle.copyWith(fontWeight: bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
