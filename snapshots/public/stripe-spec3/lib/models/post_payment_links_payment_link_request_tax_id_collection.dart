// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired {const PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired._(this.value);

factory PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired.fromJson(String json) { return switch (json) {
  'if_supported' => ifSupported,
  'never' => never,
  _ => PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired ifSupported = PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired._('if_supported');

static const PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired never = PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired._('never');

static const List<PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired> values = [ifSupported, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired($value)'; } 
 }
/// Controls tax ID collection during checkout.
@immutable final class PostPaymentLinksPaymentLinkRequestTaxIdCollection {const PostPaymentLinksPaymentLinkRequestTaxIdCollection({required this.enabled, this.$required, });

factory PostPaymentLinksPaymentLinkRequestTaxIdCollection.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestTaxIdCollection(
  enabled: json['enabled'] as bool,
  $required: json['required'] != null ? PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired.fromJson(json['required'] as String) : null,
); }

final bool enabled;

final PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired? $required;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if ($required != null) 'required': $required?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostPaymentLinksPaymentLinkRequestTaxIdCollection copyWith({bool? enabled, PostPaymentLinksPaymentLinkRequestTaxIdCollectionRequired Function()? $required, }) { return PostPaymentLinksPaymentLinkRequestTaxIdCollection(
  enabled: enabled ?? this.enabled,
  $required: $required != null ? $required() : this.$required,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestTaxIdCollection &&
          enabled == other.enabled &&
          $required == other.$required; } 
@override int get hashCode { return Object.hash(enabled, $required); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestTaxIdCollection(enabled: $enabled, \$required: ${$required})'; } 
 }
