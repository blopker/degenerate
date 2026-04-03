// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionWechatPayRedirectToIosApp {const PaymentIntentNextActionWechatPayRedirectToIosApp({required this.nativeUrl});

factory PaymentIntentNextActionWechatPayRedirectToIosApp.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionWechatPayRedirectToIosApp(
  nativeUrl: json['native_url'] as String,
); }

/// An universal link that redirect to WeChat Pay app
final String nativeUrl;

Map<String, dynamic> toJson() { return {
  'native_url': nativeUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('native_url') && json['native_url'] is String; } 
PaymentIntentNextActionWechatPayRedirectToIosApp copyWith({String? nativeUrl}) { return PaymentIntentNextActionWechatPayRedirectToIosApp(
  nativeUrl: nativeUrl ?? this.nativeUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionWechatPayRedirectToIosApp &&
          nativeUrl == other.nativeUrl; } 
@override int get hashCode { return nativeUrl.hashCode; } 
@override String toString() { return 'PaymentIntentNextActionWechatPayRedirectToIosApp(nativeUrl: $nativeUrl)'; } 
 }
