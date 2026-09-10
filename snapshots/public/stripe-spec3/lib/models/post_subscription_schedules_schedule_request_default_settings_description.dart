// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2 {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2 $empty = PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription {
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription({this.string = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription._({required this.rawValue, required this.string,
required this.postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2> postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2.isPresent) postSubscriptionSchedulesScheduleRequestDefaultSettingsDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsDescription(${toJson()})';
}
