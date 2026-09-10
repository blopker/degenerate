// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs5.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2 {const PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2._(this.value);

factory PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2 $empty = PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2._('');

static const List<PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestDefaultSettingsTransferData {
  const PostSubscriptionSchedulesRequestDefaultSettingsTransferData({this.transferDataSpecs5 = const Omittable.absent(),
this.postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestDefaultSettingsTransferData._({required this.rawValue, required this.transferDataSpecs5,
required this.postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2,});
  factory PostSubscriptionSchedulesRequestDefaultSettingsTransferData.fromJson(Object? json) => PostSubscriptionSchedulesRequestDefaultSettingsTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs5: parseAnyOfVariant<TransferDataSpecs5>(json, (value) => TransferDataSpecs5.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2>(json, (value) => PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs5> transferDataSpecs5;
final Omittable<PostSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2> postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs5.isPresent || postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs5.isPresent) transferDataSpecs5.value?.toJson(),
if (postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2.isPresent) postSubscriptionSchedulesRequestDefaultSettingsTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestDefaultSettingsTransferData(${toJson()})';
}
