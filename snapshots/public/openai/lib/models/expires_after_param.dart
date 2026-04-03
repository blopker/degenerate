// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Base timestamp used to calculate expiration. Currently fixed to `created_at`.
@immutable final class ExpiresAfterParamAnchor {const ExpiresAfterParamAnchor._(this.value);

factory ExpiresAfterParamAnchor.fromJson(String json) { return switch (json) {
  'created_at' => createdAt,
  _ => ExpiresAfterParamAnchor._(json),
}; }

static const ExpiresAfterParamAnchor createdAt = ExpiresAfterParamAnchor._('created_at');

static const List<ExpiresAfterParamAnchor> values = [createdAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ExpiresAfterParamAnchor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ExpiresAfterParamAnchor($value)'; } 
 }
/// Controls when the session expires relative to an anchor timestamp.
@immutable final class ExpiresAfterParam {const ExpiresAfterParam({required this.seconds, this.anchor = ExpiresAfterParamAnchor.createdAt, });

factory ExpiresAfterParam.fromJson(Map<String, dynamic> json) { return ExpiresAfterParam(
  anchor: ExpiresAfterParamAnchor.fromJson(json['anchor'] as String),
  seconds: (json['seconds'] as num).toInt(),
); }

/// Base timestamp used to calculate expiration. Currently fixed to `created_at`.
final ExpiresAfterParamAnchor anchor;

/// Number of seconds after the anchor when the session expires.
final int seconds;

Map<String, dynamic> toJson() { return {
  'anchor': anchor.toJson(),
  'seconds': seconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('anchor') &&
      json.containsKey('seconds') && json['seconds'] is num; } 
ExpiresAfterParam copyWith({ExpiresAfterParamAnchor? anchor, int? seconds, }) { return ExpiresAfterParam(
  anchor: anchor ?? this.anchor,
  seconds: seconds ?? this.seconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExpiresAfterParam &&
          anchor == other.anchor &&
          seconds == other.seconds; } 
@override int get hashCode { return Object.hash(anchor, seconds); } 
@override String toString() { return 'ExpiresAfterParam(anchor: $anchor, seconds: $seconds)'; } 
 }
