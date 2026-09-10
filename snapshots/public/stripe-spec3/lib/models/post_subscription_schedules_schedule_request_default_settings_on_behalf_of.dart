// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2._(json),
};}

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 $empty = PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf {
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf({this.string = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf._({required this.rawValue, required this.string,
required this.postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2> postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2.isPresent) postSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsOnBehalfOf(${toJson()})';
}
