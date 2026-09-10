// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs6.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2 {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2 $empty = PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData {
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData({this.transferDataSpecs6 = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData._({required this.rawValue, required this.transferDataSpecs6,
required this.postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData._(
    rawValue: Omittable(json),
    transferDataSpecs6: parseAnyOfVariant<TransferDataSpecs6>(json, (value) => TransferDataSpecs6.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TransferDataSpecs6> transferDataSpecs6;
final Omittable<PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2> postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => transferDataSpecs6.isPresent || postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (transferDataSpecs6.isPresent) transferDataSpecs6.value?.toJson(),
if (postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2.isPresent) postSubscriptionSchedulesScheduleRequestDefaultSettingsTransferDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsTransferData(${toJson()})';
}
