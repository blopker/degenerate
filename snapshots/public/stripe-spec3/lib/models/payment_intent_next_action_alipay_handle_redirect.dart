// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionAlipayHandleRedirect {const PaymentIntentNextActionAlipayHandleRedirect({this.nativeData = const Omittable.absent(), this.nativeUrl = const Omittable.absent(), this.returnUrl = const Omittable.absent(), this.url = const Omittable.absent(), });

factory PaymentIntentNextActionAlipayHandleRedirect.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionAlipayHandleRedirect(
  nativeData: json.containsKey('native_data') ? Omittable(json['native_data'] as String?) : const Omittable.absent(),
  nativeUrl: json.containsKey('native_url') ? Omittable(json['native_url'] as String?) : const Omittable.absent(),
  returnUrl: json.containsKey('return_url') ? Omittable(json['return_url'] as String?) : const Omittable.absent(),
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
); }

/// The native data to be used with Alipay SDK you must redirect your customer to in order to authenticate the payment in an Android App.
final Omittable<String?> nativeData;

/// The native URL you must redirect your customer to in order to authenticate the payment in an iOS App.
final Omittable<String?> nativeUrl;

/// If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
final Omittable<String?> returnUrl;

/// The URL you must redirect your customer to in order to authenticate the payment.
final Omittable<String?> url;

Map<String, dynamic> toJson() { return {
  if (nativeData.isPresent) 'native_data': nativeData.value,
  if (nativeUrl.isPresent) 'native_url': nativeUrl.value,
  if (returnUrl.isPresent) 'return_url': returnUrl.value,
  if (url.isPresent) 'url': url.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'native_data', 'native_url', 'return_url', 'url'}.contains(key)); } 
PaymentIntentNextActionAlipayHandleRedirect copyWith({Omittable<String?>? nativeData, Omittable<String?>? nativeUrl, Omittable<String?>? returnUrl, Omittable<String?>? url, }) { return PaymentIntentNextActionAlipayHandleRedirect(
  nativeData: nativeData ?? this.nativeData,
  nativeUrl: nativeUrl ?? this.nativeUrl,
  returnUrl: returnUrl ?? this.returnUrl,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionAlipayHandleRedirect &&
          nativeData == other.nativeData &&
          nativeUrl == other.nativeUrl &&
          returnUrl == other.returnUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(nativeData, nativeUrl, returnUrl, url); } 
@override String toString() { return 'PaymentIntentNextActionAlipayHandleRedirect(nativeData: $nativeData, nativeUrl: $nativeUrl, returnUrl: $returnUrl, url: $url)'; } 
 }
