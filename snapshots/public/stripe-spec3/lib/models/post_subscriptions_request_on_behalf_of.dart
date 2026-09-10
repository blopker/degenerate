// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestOnBehalfOfVariant2 {const PostSubscriptionsRequestOnBehalfOfVariant2._(this.value);

factory PostSubscriptionsRequestOnBehalfOfVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestOnBehalfOfVariant2._(json),
}; }

static const PostSubscriptionsRequestOnBehalfOfVariant2 $empty = PostSubscriptionsRequestOnBehalfOfVariant2._('');

static const List<PostSubscriptionsRequestOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestOnBehalfOfVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestOnBehalfOfVariant2($value)'; } 
 }
/// The account on behalf of which to charge, for each of the subscription's invoices.
@immutable
final class PostSubscriptionsRequestOnBehalfOf {
  const PostSubscriptionsRequestOnBehalfOf({this.string = const Omittable.absent(),
this.postSubscriptionsRequestOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestOnBehalfOf._({required this.rawValue, required this.string,
required this.postSubscriptionsRequestOnBehalfOfVariant2,});
  factory PostSubscriptionsRequestOnBehalfOf.fromJson(Object? json) => PostSubscriptionsRequestOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionsRequestOnBehalfOfVariant2: parseAnyOfVariant<PostSubscriptionsRequestOnBehalfOfVariant2>(json, (value) => PostSubscriptionsRequestOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionsRequestOnBehalfOfVariant2> postSubscriptionsRequestOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionsRequestOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionsRequestOnBehalfOfVariant2.isPresent) postSubscriptionsRequestOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestOnBehalfOf(${toJson()})';
}
