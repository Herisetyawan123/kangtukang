import 'package:flutter/cupertino.dart';
import 'package:kang_tukang/src/pages/home/detail/penyedia.dart';
import 'package:kang_tukang/src/pages/home/detail_pembayaran/app.dart';
import 'package:kang_tukang/src/pages/home/pembayaran/app.dart';
import 'package:kang_tukang/src/pages/home/service/bangunan/app.dart';
import 'package:kang_tukang/src/pages/home/service/konsultasi/app.dart';
import 'package:kang_tukang/src/pages/home/service/pembangunan/app.dart';
import 'package:kang_tukang/src/pages/home/service/renovasi/app.dart';

import '../pages/Auth/landing.dart';
import '../pages/Auth/signin.dart';
import '../pages/Auth/signup.dart';
import '../pages/home/main.dart';
import '../pages/home/profile/edit_profile.dart';
import '../pages/home/profile/payment.dart';
import '../pages/notification/main.dart';

class MyRoutes {
  static const landing = "/";
  static const signin = "/signin";
  static const signup = "/signup";
  static const home = "/home";
  static const notifikasi = "/notifikasi";
  static const editprofile = "/editprofile";
  static const mypayment = "/mypayment";

  // service toute
  static const pembangunan = "/pembangunan";
  static const konsultasi = "/konsultasi";
  static const renovasi = "/renovasi";
  static const bangunan = "/bangunan";
  static const penyedia = "/penyedia";
  static const pembayaran = "/pembayaran";
  static const detailPembayaran = '/detailpembayaran';

  static final data = <String, WidgetBuilder>{
    landing: (_) => const LandingPage(),
    signin: (_) => const SignInPage(),
    signup: (_) => const SignUpPage(),
    home: (_) => const MainPage(),
    notifikasi: (_) => const NotificationPage(),
    editprofile: (_) => const ProfilePage(),
    mypayment: (_) => const PaymentAddPage(),
    pembangunan: (_) => const PembangunanPage(),
    konsultasi: (_) => const KonsultasiPage(),
    renovasi: (_) => const RenovasiPage(),
    bangunan:(_) => const BangunanPage(),
    penyedia: (_) => const PenyediaJasa(),
    pembayaran: (_) => const Pembayaran(),
    detailPembayaran: (_) => const DetailPembayaran(),
  };
}
