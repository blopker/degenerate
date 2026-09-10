// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2($value)';}
}

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds {
  const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2> postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestInvoiceSettingsAccountTaxIds(${toJson()})';
}
