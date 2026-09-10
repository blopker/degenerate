// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2 {const PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2._(this.value);

factory PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2 $empty = PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2._('');

static const List<PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestDefaultSettingsDescription {
  const PostSubscriptionSchedulesRequestDefaultSettingsDescription({this.string = const Omittable.absent(),
this.postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestDefaultSettingsDescription._({required this.rawValue, required this.string,
required this.postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2,});
  factory PostSubscriptionSchedulesRequestDefaultSettingsDescription.fromJson(Object? json) => PostSubscriptionSchedulesRequestDefaultSettingsDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2>(json, (value) => PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2> postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2.isPresent) postSubscriptionSchedulesRequestDefaultSettingsDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestDefaultSettingsDescription(${toJson()})';
}
