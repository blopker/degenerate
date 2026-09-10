// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs7.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2($value)';}
}
/// If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges. This will be unset if you POST an empty value.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestTransferData {
  const PostSubscriptionsSubscriptionExposedIdRequestTransferData({this.transferDataSpecs7 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestTransferData._({required this.rawValue, required this.transferDataSpecs7,
required this.postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestTransferData.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs7: parseAnyOfVariant<TransferDataSpecs7>(json, (value) => TransferDataSpecs7.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs7> transferDataSpecs7;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2> postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs7.isPresent || postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs7.isPresent) transferDataSpecs7.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestTransferData(${toJson()})';
}
