import 'package:get/get.dart';
import 'package:sertiphy/view/admin/cert/edit.dart';
import 'package:sertiphy/view/admin/cert/view.dart';
import 'package:sertiphy/view/admin/certificates.dart';
import 'package:sertiphy/view/admin/dashboard.dart';
import 'package:sertiphy/view/admin/templates.dart';
import 'package:sertiphy/view/admin/userdata.dart';
import './view/dashboard.dart';
import './view/home.dart';
import './view/login.dart';
import './view/otp_verify.dart';
import './view/register.dart';

List<GetPage> routes =[
  GetPage(name: '/', page: () => MyHomePage()),
  GetPage(name: '/login', page: () => LoginPage(),transition: Transition.zoom),
  GetPage(name: '/register', page: () => RegisterForm()),
  GetPage(name: '/verify', page: () => OtpVerify()),
  GetPage(name: '/dashboard', page: () => DashBoard()),
  GetPage(name: 'admin/dashboard', page: () => AdminDash()),
  GetPage(name: 'admin/certificates', page: () => Certificates()),
  GetPage(name: 'admin/userdata', page: () => UserData()),
  GetPage(name: 'admin/templates', page: () => Templates()),
  GetPage(name: '/admin/cert/view', page: () => CertView()),
  GetPage(name: '/admin/cert/edit', page: () => EditTemp()),
];