// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_pdf_request_variant2_goto_options_wait_until.dart';/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
@immutable final class BrapiPostPdfRequestVariant2GotoOptions {const BrapiPostPdfRequestVariant2GotoOptions({this.referer, this.referrerPolicy, this.timeout = 30000.0, this.waitUntil, });

factory BrapiPostPdfRequestVariant2GotoOptions.fromJson(Map<String, dynamic> json) { return BrapiPostPdfRequestVariant2GotoOptions(
  referer: json['referer'] as String?,
  referrerPolicy: json['referrerPolicy'] as String?,
  timeout: json.containsKey('timeout') ? (json['timeout'] as num).toDouble() : 30000.0,
  waitUntil: json['waitUntil'] != null ? OneOf5.parse(json['waitUntil'], fromA: (v) => BrapiPostPdfRequestVariant2GotoOptionsWaitUntilVariant1.fromJson(v as String), fromB: (v) => BrapiPostPdfRequestVariant2GotoOptionsWaitUntilVariant2.fromJson(v as String), fromC: (v) => BrapiPostPdfRequestVariant2GotoOptionsWaitUntilVariant3.fromJson(v as String), fromD: (v) => BrapiPostPdfRequestVariant2GotoOptionsWaitUntilVariant4.fromJson(v as String), fromE: (v) => (v as List<dynamic>).map((e) => BrapiPostPdfRequestVariant2GotoOptionsWaitUntilVariant5.fromJson(e as String)).toList(),) : null,
); }

final String? referer;

final String? referrerPolicy;

final double timeout;

final BrapiPostPdfRequestVariant2GotoOptionsWaitUntil? waitUntil;

Map<String, dynamic> toJson() { return {
  'referer': ?referer,
  'referrerPolicy': ?referrerPolicy,
  'timeout': timeout,
  if (waitUntil != null) 'waitUntil': waitUntil?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'referer', 'referrerPolicy', 'timeout', 'waitUntil'}.contains(key)); } 
BrapiPostPdfRequestVariant2GotoOptions copyWith({String Function()? referer, String Function()? referrerPolicy, double Function()? timeout, BrapiPostPdfRequestVariant2GotoOptionsWaitUntil Function()? waitUntil, }) { return BrapiPostPdfRequestVariant2GotoOptions(
  referer: referer != null ? referer() : this.referer,
  referrerPolicy: referrerPolicy != null ? referrerPolicy() : this.referrerPolicy,
  timeout: timeout != null ? timeout() : this.timeout,
  waitUntil: waitUntil != null ? waitUntil() : this.waitUntil,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostPdfRequestVariant2GotoOptions &&
          referer == other.referer &&
          referrerPolicy == other.referrerPolicy &&
          timeout == other.timeout &&
          waitUntil == other.waitUntil; } 
@override int get hashCode { return Object.hash(referer, referrerPolicy, timeout, waitUntil); } 
@override String toString() { return 'BrapiPostPdfRequestVariant2GotoOptions(referer: $referer, referrerPolicy: $referrerPolicy, timeout: $timeout, waitUntil: $waitUntil)'; } 
 }
