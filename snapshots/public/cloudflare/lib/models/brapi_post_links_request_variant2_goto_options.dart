// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_request_variant2_goto_options_wait_until.dart';/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
@immutable final class BrapiPostLinksRequestVariant2GotoOptions {const BrapiPostLinksRequestVariant2GotoOptions({this.referer, this.referrerPolicy, this.timeout, this.waitUntil, });

factory BrapiPostLinksRequestVariant2GotoOptions.fromJson(Map<String, dynamic> json) {return BrapiPostLinksRequestVariant2GotoOptions(
  referer: json['referer'] as String?,
  referrerPolicy: json['referrerPolicy'] as String?,
  timeout: json['timeout'] != null ? (json['timeout'] as num).toDouble() : null,
  waitUntil: json['waitUntil'] != null ? BrapiPostLinksRequestVariant2GotoOptionsWaitUntil.fromJson(json['waitUntil']) : null,
);}

final String? referer;

final String? referrerPolicy;

final double? timeout;

final BrapiPostLinksRequestVariant2GotoOptionsWaitUntil? waitUntil;

/// The value with the schema default applied when absent.
double get timeoutOrDefault {return timeout ?? 30000.0;}
Map<String, dynamic> toJson() {return {
  'referer': ?referer,
  'referrerPolicy': ?referrerPolicy,
  'timeout': ?timeout,
  if (waitUntil != null) 'waitUntil': waitUntil?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'referer', 'referrerPolicy', 'timeout', 'waitUntil'}.contains(key));}
BrapiPostLinksRequestVariant2GotoOptions copyWith({String? Function()? referer, String? Function()? referrerPolicy, double? Function()? timeout, BrapiPostLinksRequestVariant2GotoOptionsWaitUntil? Function()? waitUntil, }) {return BrapiPostLinksRequestVariant2GotoOptions(
  referer: referer != null ? referer() : this.referer,
  referrerPolicy: referrerPolicy != null ? referrerPolicy() : this.referrerPolicy,
  timeout: timeout != null ? timeout() : this.timeout,
  waitUntil: waitUntil != null ? waitUntil() : this.waitUntil,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is BrapiPostLinksRequestVariant2GotoOptions &&
          referer == other.referer &&
          referrerPolicy == other.referrerPolicy &&
          timeout == other.timeout &&
          waitUntil == other.waitUntil;}
@override int get hashCode {return Object.hash(referer, referrerPolicy, timeout, waitUntil);}
@override String toString() {return 'BrapiPostLinksRequestVariant2GotoOptions(referer: $referer, referrerPolicy: $referrerPolicy, timeout: $timeout, waitUntil: $waitUntil)';}
}
