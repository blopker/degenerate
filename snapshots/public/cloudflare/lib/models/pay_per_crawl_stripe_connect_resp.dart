// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PayPerCrawlStripeConnectResp {const PayPerCrawlStripeConnectResp({this.url});

factory PayPerCrawlStripeConnectResp.fromJson(Map<String, dynamic> json) { return PayPerCrawlStripeConnectResp(
  url: json['url'] as String?,
); }

final String? url;

Map<String, dynamic> toJson() { return {
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url'}.contains(key)); } 
PayPerCrawlStripeConnectResp copyWith({String Function()? url}) { return PayPerCrawlStripeConnectResp(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PayPerCrawlStripeConnectResp &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'PayPerCrawlStripeConnectResp(url: $url)'; } 
 }
