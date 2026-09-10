// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2($value)';}
}
/// If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges. This will be unset if you POST an empty value.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData({this.transferDataSpecs = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData._({required this.rawValue, required this.transferDataSpecs,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs: parseAnyOfVariant<TransferDataSpecs>(json, (value) => TransferDataSpecs.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs> transferDataSpecs;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs.isPresent) transferDataSpecs.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTransferData(${toJson()})';
}
