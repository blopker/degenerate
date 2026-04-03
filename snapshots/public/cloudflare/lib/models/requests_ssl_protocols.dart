// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A breakdown of requests by their SSL protocol.
@immutable final class RequestsSslProtocols {const RequestsSslProtocols({this.tlSv1, this.tlSv11, this.tlSv12, this.tlSv13, this.none, });

factory RequestsSslProtocols.fromJson(Map<String, dynamic> json) { return RequestsSslProtocols(
  tlSv1: json['TLSv1'] != null ? (json['TLSv1'] as num).toInt() : null,
  tlSv11: json['TLSv1.1'] != null ? (json['TLSv1.1'] as num).toInt() : null,
  tlSv12: json['TLSv1.2'] != null ? (json['TLSv1.2'] as num).toInt() : null,
  tlSv13: json['TLSv1.3'] != null ? (json['TLSv1.3'] as num).toInt() : null,
  none: json['none'] != null ? (json['none'] as num).toInt() : null,
); }

/// The number of requests served over TLS v1.0.
final int? tlSv1;

/// The number of requests served over TLS v1.1.
final int? tlSv11;

/// The number of requests served over TLS v1.2.
final int? tlSv12;

/// The number of requests served over TLS v1.3.
final int? tlSv13;

/// The number of requests served over HTTP.
final int? none;

Map<String, dynamic> toJson() { return {
  'TLSv1': ?tlSv1,
  'TLSv1.1': ?tlSv11,
  'TLSv1.2': ?tlSv12,
  'TLSv1.3': ?tlSv13,
  'none': ?none,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'TLSv1', 'TLSv1.1', 'TLSv1.2', 'TLSv1.3', 'none'}.contains(key)); } 
RequestsSslProtocols copyWith({int Function()? tlSv1, int Function()? tlSv11, int Function()? tlSv12, int Function()? tlSv13, int Function()? none, }) { return RequestsSslProtocols(
  tlSv1: tlSv1 != null ? tlSv1() : this.tlSv1,
  tlSv11: tlSv11 != null ? tlSv11() : this.tlSv11,
  tlSv12: tlSv12 != null ? tlSv12() : this.tlSv12,
  tlSv13: tlSv13 != null ? tlSv13() : this.tlSv13,
  none: none != null ? none() : this.none,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RequestsSslProtocols &&
          tlSv1 == other.tlSv1 &&
          tlSv11 == other.tlSv11 &&
          tlSv12 == other.tlSv12 &&
          tlSv13 == other.tlSv13 &&
          none == other.none; } 
@override int get hashCode { return Object.hash(tlSv1, tlSv11, tlSv12, tlSv13, none); } 
@override String toString() { return 'RequestsSslProtocols(tlSv1: $tlSv1, tlSv11: $tlSv11, tlSv12: $tlSv12, tlSv13: $tlSv13, none: $none)'; } 
 }
