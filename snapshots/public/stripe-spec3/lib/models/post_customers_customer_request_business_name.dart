// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerRequestBusinessNameVariant2 {const PostCustomersCustomerRequestBusinessNameVariant2._(this.value);

factory PostCustomersCustomerRequestBusinessNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestBusinessNameVariant2._(json),
}; }

static const PostCustomersCustomerRequestBusinessNameVariant2 $empty = PostCustomersCustomerRequestBusinessNameVariant2._('');

static const List<PostCustomersCustomerRequestBusinessNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestBusinessNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestBusinessNameVariant2($value)'; } 
 }
/// The customer's business name. This may be up to *150 characters*.
@immutable
final class PostCustomersCustomerRequestBusinessName {
  const PostCustomersCustomerRequestBusinessName({this.string = const Omittable.absent(),
this.postCustomersCustomerRequestBusinessNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestBusinessName._({required this.rawValue, required this.string,
required this.postCustomersCustomerRequestBusinessNameVariant2,});
  factory PostCustomersCustomerRequestBusinessName.fromJson(Object? json) => PostCustomersCustomerRequestBusinessName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCustomersCustomerRequestBusinessNameVariant2: parseAnyOfVariant<PostCustomersCustomerRequestBusinessNameVariant2>(json, (value) => PostCustomersCustomerRequestBusinessNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCustomersCustomerRequestBusinessNameVariant2> postCustomersCustomerRequestBusinessNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCustomersCustomerRequestBusinessNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCustomersCustomerRequestBusinessNameVariant2.isPresent) postCustomersCustomerRequestBusinessNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestBusinessName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestBusinessName(${toJson()})';
}
