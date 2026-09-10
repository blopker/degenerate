// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2($value)'; } 
 }
/// The account on behalf of which to charge, for each of the subscription's invoices.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf {
  const PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf({this.string = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf._({required this.rawValue, required this.string,
required this.postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2> postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestOnBehalfOf(${toJson()})';
}
