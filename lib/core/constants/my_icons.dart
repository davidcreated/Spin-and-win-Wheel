import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:motobites/core/utils/responsive.dart';

final icons = MyIcons();

class MyIcons {
  Widget _icon(String path, {double? size, Color? color}) {
    return SvgPicture.asset(
      path,
      width: size ?? 24.sp,
      height: size ?? 24.sp,
      colorFilter: ColorFilter.mode(
        color ?? Colors.black87,
        BlendMode.srcIn,
      ),
    );
  }

  // notification icon
  Widget notificationIcon({double? size, Color? color}) =>
      _icon('assets/svgs/notification.svg', size: size, color: color);

  // filter icon
  Widget filterIcon({double? size, Color? color}) =>
      _icon('assets/svgs/filter_icon.svg', size: size, color: color);

  // add icon
  Widget addIcon({double? size, Color? color}) =>
      _icon('assets/svgs/add_icon.svg', size: size, color: color);

  // order icon
  Widget orderIcon({double? size, Color? color}) =>
      _icon('assets/svgs/orders_icon.svg', size: size, color: color);

  // deals icon
  Widget dealsIcon({double? size, Color? color}) =>
      _icon('assets/svgs/deals_icon.svg', size: size, color: color);

  // home icon
  Widget homeIcon({double? size, Color? color}) =>
      _icon('assets/svgs/home_icon.svg', size: size, color: color);

  // reward icon
  Widget rewardIcon({double? size, Color? color}) =>
      _icon('assets/svgs/reward_icon.svg', size: size, color: color);

  // profile icon
  Widget profileIcon({double? size, Color? color}) =>
      _icon('assets/svgs/profile_icon.svg', size: size, color: color);

  // UsersThread icon
  Widget usersThreadIcon({double? size, Color? color}) =>
      _icon('assets/svgs/usersthread.svg', size: size, color: color);

  // invoice icon
  Widget invoiceIcon({double? size, Color? color}) =>
      _icon('assets/svgs/invoice.svg', size: size, color: color);

  // favorite icon
  Widget favoriteIcon({double? size, Color? color}) =>
      _icon('assets/svgs/favorite.svg', size: size, color: color);

  // credit icon
  Widget creditIcon({double? size, Color? color}) =>
      _icon('assets/svgs/credit.svg', size: size, color: color);

  // address icon
  Widget addressIcon({double? size, Color? color}) =>
      _icon('assets/svgs/address.svg', size: size, color: color);

  // payment icon
  Widget paymentIcon({double? size, Color? color}) =>
      _icon('assets/svgs/payment.svg', size: size, color: color);

  // security icon
  Widget securityIcon({double? size, Color? color}) =>
      _icon('assets/svgs/security.svg', size: size, color: color);

  // question icon
  Widget questionIcon({double? size, Color? color}) =>
      _icon('assets/svgs/question.svg', size: size, color: color);

  // share icon
  Widget shareIcon({double? size, Color? color}) =>
      _icon('assets/svgs/share.svg', size: size, color: color);

  // biometrics icon
  Widget biometricsIcon({double? size, Color? color}) =>
      _icon('assets/svgs/biometrics.svg', size: size, color: color);

  // recovery icon
  Widget recoveryIcon({double? size, Color? color}) =>
      _icon('assets/svgs/recovery.svg', size: size, color: color);

  // data icon
  Widget dataIcon({double? size, Color? color}) =>
      _icon('assets/svgs/data.svg', size: size, color: color);

  // location icon
  Widget locationIcon({double? size, Color? color}) =>
      _icon('assets/svgs/location.svg', size: size, color: color);

  // phone icon
  Widget phoneIcon({double? size, Color? color}) =>
      _icon('assets/svgs/phone.svg', size: size, color: color);


  // logout icon
  Widget logoutIcon({double? size, Color? color}) =>
      _icon('assets/svgs/logout.svg', size: size, color: color);

}
