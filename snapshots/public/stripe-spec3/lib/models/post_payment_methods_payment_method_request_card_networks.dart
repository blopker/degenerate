// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred {const PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred._(this.value);

factory PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred.fromJson(String json) { return switch (json) {
  '' => $empty,
  'cartes_bancaires' => cartesBancaires,
  'mastercard' => mastercard,
  'visa' => visa,
  _ => PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred._(json),
}; }

static const PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred $empty = PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred._('');

static const PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred cartesBancaires = PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred._('cartes_bancaires');

static const PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred mastercard = PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred._('mastercard');

static const PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred visa = PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred._('visa');

static const List<PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred> values = [$empty, cartesBancaires, mastercard, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred($value)'; } 
 }
@immutable final class PostPaymentMethodsPaymentMethodRequestCardNetworks {const PostPaymentMethodsPaymentMethodRequestCardNetworks({this.preferred});

factory PostPaymentMethodsPaymentMethodRequestCardNetworks.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsPaymentMethodRequestCardNetworks(
  preferred: json['preferred'] != null ? PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred.fromJson(json['preferred'] as String) : null,
); }

final PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred? preferred;

Map<String, dynamic> toJson() { return {
  if (preferred != null) 'preferred': preferred?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred'}.contains(key)); } 
PostPaymentMethodsPaymentMethodRequestCardNetworks copyWith({PostPaymentMethodsPaymentMethodRequestCardNetworksPreferred Function()? preferred}) { return PostPaymentMethodsPaymentMethodRequestCardNetworks(
  preferred: preferred != null ? preferred() : this.preferred,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodRequestCardNetworks &&
          preferred == other.preferred; } 
@override int get hashCode { return preferred.hashCode; } 
@override String toString() { return 'PostPaymentMethodsPaymentMethodRequestCardNetworks(preferred: $preferred)'; } 
 }
