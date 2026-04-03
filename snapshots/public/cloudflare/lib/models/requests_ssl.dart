// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A break down of requests served over HTTPS.
@immutable final class RequestsSsl {const RequestsSsl({this.encrypted, this.unencrypted, });

factory RequestsSsl.fromJson(Map<String, dynamic> json) { return RequestsSsl(
  encrypted: json['encrypted'] != null ? (json['encrypted'] as num).toInt() : null,
  unencrypted: json['unencrypted'] != null ? (json['unencrypted'] as num).toInt() : null,
); }

/// The number of requests served over HTTPS.
final int? encrypted;

/// The number of requests served over HTTP.
final int? unencrypted;

Map<String, dynamic> toJson() { return {
  'encrypted': ?encrypted,
  'unencrypted': ?unencrypted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'encrypted', 'unencrypted'}.contains(key)); } 
RequestsSsl copyWith({int Function()? encrypted, int Function()? unencrypted, }) { return RequestsSsl(
  encrypted: encrypted != null ? encrypted() : this.encrypted,
  unencrypted: unencrypted != null ? unencrypted() : this.unencrypted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RequestsSsl &&
          encrypted == other.encrypted &&
          unencrypted == other.unencrypted; } 
@override int get hashCode { return Object.hash(encrypted, unencrypted); } 
@override String toString() { return 'RequestsSsl(encrypted: $encrypted, unencrypted: $unencrypted)'; } 
 }
