// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata({this.mapStringString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata._({required this.rawValue, required this.mapStringString,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsMetadata(${toJson()})';
}
