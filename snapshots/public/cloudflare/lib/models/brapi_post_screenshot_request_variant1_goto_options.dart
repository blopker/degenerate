// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_request_variant1_goto_options_wait_until.dart';/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
@immutable final class BrapiPostScreenshotRequestVariant1GotoOptions {const BrapiPostScreenshotRequestVariant1GotoOptions({this.referer, this.referrerPolicy, this.timeout = 30000.0, this.waitUntil, });

factory BrapiPostScreenshotRequestVariant1GotoOptions.fromJson(Map<String, dynamic> json) { return BrapiPostScreenshotRequestVariant1GotoOptions(
  referer: json['referer'] as String?,
  referrerPolicy: json['referrerPolicy'] as String?,
  timeout: json.containsKey('timeout') ? (json['timeout'] as num).toDouble() : 30000.0,
  waitUntil: json['waitUntil'] != null ? OneOf5.parse(json['waitUntil'], fromA: (v) => BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntilVariant1.fromJson(v as String), fromB: (v) => BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntilVariant2.fromJson(v as String), fromC: (v) => BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntilVariant3.fromJson(v as String), fromD: (v) => BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntilVariant4.fromJson(v as String), fromE: (v) => (v as List<dynamic>).map((e) => BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntilVariant5.fromJson(e as String)).toList(),) : null,
); }

final String? referer;

final String? referrerPolicy;

final double timeout;

final BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntil? waitUntil;

Map<String, dynamic> toJson() { return {
  'referer': ?referer,
  'referrerPolicy': ?referrerPolicy,
  'timeout': timeout,
  if (waitUntil != null) 'waitUntil': waitUntil?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'referer', 'referrerPolicy', 'timeout', 'waitUntil'}.contains(key)); } 
BrapiPostScreenshotRequestVariant1GotoOptions copyWith({String Function()? referer, String Function()? referrerPolicy, double Function()? timeout, BrapiPostScreenshotRequestVariant1GotoOptionsWaitUntil Function()? waitUntil, }) { return BrapiPostScreenshotRequestVariant1GotoOptions(
  referer: referer != null ? referer() : this.referer,
  referrerPolicy: referrerPolicy != null ? referrerPolicy() : this.referrerPolicy,
  timeout: timeout != null ? timeout() : this.timeout,
  waitUntil: waitUntil != null ? waitUntil() : this.waitUntil,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScreenshotRequestVariant1GotoOptions &&
          referer == other.referer &&
          referrerPolicy == other.referrerPolicy &&
          timeout == other.timeout &&
          waitUntil == other.waitUntil; } 
@override int get hashCode { return Object.hash(referer, referrerPolicy, timeout, waitUntil); } 
@override String toString() { return 'BrapiPostScreenshotRequestVariant1GotoOptions(referer: $referer, referrerPolicy: $referrerPolicy, timeout: $timeout, waitUntil: $waitUntil)'; } 
 }
