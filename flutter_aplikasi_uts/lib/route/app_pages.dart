// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter_aplikasi_uts/page/halaman_navigation.dart';
import 'package:flutter_aplikasi_uts/route/app_pages.dart';
import 'package:flutter_aplikasi_uts/route/app_routes.dart';
import 'package:flutter_aplikasi_uts/page/halaman_profile.dart';
import 'package:flutter_aplikasi_uts/page/halaman_social_media.dart';
import 'package:flutter_aplikasi_uts/page/halaman_network_maps.dart';
import 'package:flutter_aplikasi_uts/page/halaman_document.dart';
import 'package:flutter_aplikasi_uts/page/halaman_gallery.dart';
import 'package:flutter_aplikasi_uts/page/halaman_login.dart';
import 'package:get/get.dart';
import '../page/halaman_navigation.dart';

class AppPages {
  static const LOGIN = Routes.LOGIN;
  static const NAVIGATION = Routes.NAVIGATION;
  static const PROFILE_PAGE = Routes.PROFILE_PAGE;
  static const SOCIAL_NETWORK_PAGE = Routes.SOCIAL_NETWORK_PAGE;
  static const MEDIA_GALLERY_PAGE = Routes.MEDIA_GALLERY_PAGE;
  static const DOCUMENT_PAGE = Routes.DOCUMENT_PAGE;
  static const NETWORK_MAPS_PAGE = Routes.NETWORK_MAPS_PAGE;

  static final list = [
    GetPage(name: Routes.LOGIN, page: () => Login()),
    // GetPage(
    //   name: Routes.NAVIGATION,
    //   page: () => DashboardPage(),
    // ),
    // GetPage(
    //   name: Routes.PROFILE_PAGE,
    //   page: () => NavigationPage(),
    // ),
    // GetPage(
    //   name: Routes.SOCIAL_NETWORK_PAGE,
    //   page: () => KegiatanKampusPage(),
    // ), // GetPage
    // GetPage(
    //     name: Routes.MEDIA_GALLERY_PAGE, page: () => DataDosenMahasiswaPage()),
    // GetPage(name: Routes.DOCUMENT_PAGE, page: () => DataSaranaPrasaranaPage()),
    // GetPage(
    //     name: Routes.NETWORK_MAPS_PAGE,
    //     page: () => PencapaianUniversitasPage()),
  ];
}
