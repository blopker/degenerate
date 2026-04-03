// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_id_request_active_from.dart';import 'post_tax_registrations_id_request_expires_at.dart';@immutable final class PostTaxRegistrationsIdRequest {const PostTaxRegistrationsIdRequest({this.activeFrom, this.expand, this.expiresAt, });

factory PostTaxRegistrationsIdRequest.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsIdRequest(
  activeFrom: json['active_from'] != null ? OneOf2.parse(json['active_from'], fromA: (v) => PostTaxRegistrationsIdRequestActiveFromVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  expiresAt: json['expires_at'] != null ? OneOf3.parse(json['expires_at'], fromA: (v) => PostTaxRegistrationsIdRequestExpiresAtVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(), fromC: (v) => PostTaxRegistrationsIdRequestExpiresAtVariant3.fromJson(v as String),) : null,
); }

/// Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
final PostTaxRegistrationsIdRequestActiveFrom? activeFrom;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
final PostTaxRegistrationsIdRequestExpiresAt? expiresAt;

Map<String, dynamic> toJson() { return {
  if (activeFrom != null) 'active_from': activeFrom?.toJson(),
  'expand': ?expand,
  if (expiresAt != null) 'expires_at': expiresAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'active_from', 'expand', 'expires_at'}.contains(key)); } 
PostTaxRegistrationsIdRequest copyWith({PostTaxRegistrationsIdRequestActiveFrom Function()? activeFrom, List<String> Function()? expand, PostTaxRegistrationsIdRequestExpiresAt Function()? expiresAt, }) { return PostTaxRegistrationsIdRequest(
  activeFrom: activeFrom != null ? activeFrom() : this.activeFrom,
  expand: expand != null ? expand() : this.expand,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsIdRequest &&
          activeFrom == other.activeFrom &&
          listEquals(expand, other.expand) &&
          expiresAt == other.expiresAt; } 
@override int get hashCode { return Object.hash(activeFrom, Object.hashAll(expand ?? const []), expiresAt); } 
@override String toString() { return 'PostTaxRegistrationsIdRequest(activeFrom: $activeFrom, expand: $expand, expiresAt: $expiresAt)'; } 
 }
