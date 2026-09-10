// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2 {const PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2._(this.value);

factory PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2 $empty = PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2._('');

static const List<PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf {
  const PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf({this.string = const Omittable.absent(),
this.postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf._({required this.rawValue, required this.string,
required this.postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2,});
  factory PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf.fromJson(Object? json) => PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2>(json, (value) => PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2> postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2.isPresent) postSubscriptionSchedulesRequestDefaultSettingsOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestDefaultSettingsOnBehalfOf(${toJson()})';
}
