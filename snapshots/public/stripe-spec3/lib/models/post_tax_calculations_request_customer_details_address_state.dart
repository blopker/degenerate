// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2 {const PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2 $empty = PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2._('');

static const List<PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2($value)'; } 
 }

@immutable
final class PostTaxCalculationsRequestCustomerDetailsAddressState {
  const PostTaxCalculationsRequestCustomerDetailsAddressState({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestCustomerDetailsAddressStateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestCustomerDetailsAddressState._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestCustomerDetailsAddressStateVariant2,});
  factory PostTaxCalculationsRequestCustomerDetailsAddressState.fromJson(Object? json) => PostTaxCalculationsRequestCustomerDetailsAddressState._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestCustomerDetailsAddressStateVariant2: parseAnyOfVariant<PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2>(json, (value) => PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestCustomerDetailsAddressStateVariant2> postTaxCalculationsRequestCustomerDetailsAddressStateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestCustomerDetailsAddressStateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestCustomerDetailsAddressStateVariant2.isPresent) postTaxCalculationsRequestCustomerDetailsAddressStateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestCustomerDetailsAddressState && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestCustomerDetailsAddressState(${toJson()})';
}
