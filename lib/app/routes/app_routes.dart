// ignore_for_file: constant_identifier_names, non_constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;

  static const DASHBOARD = _Paths.HOME + _Paths.DASHBOARD;
  static const PROFILE = _Paths.HOME + _Paths.PROFILE;
  static const CATALOG = _Paths.HOME + _Paths.CATALOG;
  static const PRODUCT = _Paths.HOME + _Paths.CATALOG+ _Paths.PRODUCT;

  static const FAVORIT = _Paths.HOME + _Paths.FAVORIT;
  static const CART = _Paths.HOME + _Paths.CART;
  

}

abstract class _Paths {
  static const HOME = '/home';
  static const CATALOG = '/catalog';
  static const FAVORIT = '/favorit';
  static const CART = '/cart';
  static const PROFILE = '/profile';

  static const SPLASH = '/splash';
  static const PRODUCT = '/product';
  static const DASHBOARD = '/dashboard';
}
