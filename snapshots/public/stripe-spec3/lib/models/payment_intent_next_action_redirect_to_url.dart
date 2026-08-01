// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionRedirectToUrl {const PaymentIntentNextActionRedirectToUrl({this.returnUrl = const Omittable.absent(), this.url = const Omittable.absent(), });

factory PaymentIntentNextActionRedirectToUrl.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionRedirectToUrl(
  returnUrl: json.containsKey('return_url') ? Omittable(json['return_url'] as String?) : const Omittable.absent(),
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
); }

/// If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
final Omittable<String?> returnUrl;

/// The URL you must redirect your customer to in order to authenticate the payment.
final Omittable<String?> url;

Map<String, dynamic> toJson() { return {
  if (returnUrl.isPresent) 'return_url': returnUrl.value,
  if (url.isPresent) 'url': url.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'return_url', 'url'}.contains(key)); } 
PaymentIntentNextActionRedirectToUrl copyWith({Omittable<String?>? returnUrl, Omittable<String?>? url, }) { return PaymentIntentNextActionRedirectToUrl(
  returnUrl: returnUrl ?? this.returnUrl,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionRedirectToUrl &&
          returnUrl == other.returnUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(returnUrl, url); } 
@override String toString() { return 'PaymentIntentNextActionRedirectToUrl(returnUrl: $returnUrl, url: $url)'; } 
 }
