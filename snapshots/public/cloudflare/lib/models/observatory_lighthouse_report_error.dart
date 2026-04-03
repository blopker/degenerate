// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The error code of the Lighthouse result.
@immutable final class ObservatoryLighthouseErrorCode {const ObservatoryLighthouseErrorCode._(this.value);

factory ObservatoryLighthouseErrorCode.fromJson(String json) { return switch (json) {
  'NOT_REACHABLE' => notReachable,
  'DNS_FAILURE' => dnsFailure,
  'NOT_HTML' => notHtml,
  'LIGHTHOUSE_TIMEOUT' => lighthouseTimeout,
  'UNKNOWN' => unknown,
  _ => ObservatoryLighthouseErrorCode._(json),
}; }

static const ObservatoryLighthouseErrorCode notReachable = ObservatoryLighthouseErrorCode._('NOT_REACHABLE');

static const ObservatoryLighthouseErrorCode dnsFailure = ObservatoryLighthouseErrorCode._('DNS_FAILURE');

static const ObservatoryLighthouseErrorCode notHtml = ObservatoryLighthouseErrorCode._('NOT_HTML');

static const ObservatoryLighthouseErrorCode lighthouseTimeout = ObservatoryLighthouseErrorCode._('LIGHTHOUSE_TIMEOUT');

static const ObservatoryLighthouseErrorCode unknown = ObservatoryLighthouseErrorCode._('UNKNOWN');

static const List<ObservatoryLighthouseErrorCode> values = [notReachable, dnsFailure, notHtml, lighthouseTimeout, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ObservatoryLighthouseErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ObservatoryLighthouseErrorCode($value)'; } 
 }
@immutable final class ObservatoryLighthouseReportError {const ObservatoryLighthouseReportError({this.code, this.detail, this.finalDisplayedUrl, });

factory ObservatoryLighthouseReportError.fromJson(Map<String, dynamic> json) { return ObservatoryLighthouseReportError(
  code: json['code'] != null ? ObservatoryLighthouseErrorCode.fromJson(json['code'] as String) : null,
  detail: json['detail'] as String?,
  finalDisplayedUrl: json['finalDisplayedUrl'] as String?,
); }

/// The error code of the Lighthouse result.
final ObservatoryLighthouseErrorCode? code;

/// Detailed error message.
final String? detail;

/// The final URL displayed to the user.
final String? finalDisplayedUrl;

Map<String, dynamic> toJson() { return {
  if (code != null) 'code': code?.toJson(),
  'detail': ?detail,
  'finalDisplayedUrl': ?finalDisplayedUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'detail', 'finalDisplayedUrl'}.contains(key)); } 
ObservatoryLighthouseReportError copyWith({ObservatoryLighthouseErrorCode Function()? code, String Function()? detail, String Function()? finalDisplayedUrl, }) { return ObservatoryLighthouseReportError(
  code: code != null ? code() : this.code,
  detail: detail != null ? detail() : this.detail,
  finalDisplayedUrl: finalDisplayedUrl != null ? finalDisplayedUrl() : this.finalDisplayedUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryLighthouseReportError &&
          code == other.code &&
          detail == other.detail &&
          finalDisplayedUrl == other.finalDisplayedUrl; } 
@override int get hashCode { return Object.hash(code, detail, finalDisplayedUrl); } 
@override String toString() { return 'ObservatoryLighthouseReportError(code: $code, detail: $detail, finalDisplayedUrl: $finalDisplayedUrl)'; } 
 }
