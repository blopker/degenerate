// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateModerationRequestModelVariant2 {const CreateModerationRequestModelVariant2._(this.value);

factory CreateModerationRequestModelVariant2.fromJson(String json) {return switch (json) {
  'omni-moderation-latest' => omniModerationLatest,
  'omni-moderation-2024-09-26' => omniModeration20240926,
  'text-moderation-latest' => textModerationLatest,
  'text-moderation-stable' => textModerationStable,
  _ => CreateModerationRequestModelVariant2._(json),
};}

static const CreateModerationRequestModelVariant2 omniModerationLatest = CreateModerationRequestModelVariant2._('omni-moderation-latest');

static const CreateModerationRequestModelVariant2 omniModeration20240926 = CreateModerationRequestModelVariant2._('omni-moderation-2024-09-26');

static const CreateModerationRequestModelVariant2 textModerationLatest = CreateModerationRequestModelVariant2._('text-moderation-latest');

static const CreateModerationRequestModelVariant2 textModerationStable = CreateModerationRequestModelVariant2._('text-moderation-stable');

static const List<CreateModerationRequestModelVariant2> values = [omniModerationLatest, omniModeration20240926, textModerationLatest, textModerationStable];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateModerationRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateModerationRequestModelVariant2($value)';}
}
/// The content moderation model you would like to use. Learn more in
/// [the moderation guide](/docs/guides/moderation), and learn about
/// available models [here](/docs/models#moderation).
/// 
@immutable
final class CreateModerationRequestModel {
  const CreateModerationRequestModel({this.string = const Omittable.absent(),
this.createModerationRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateModerationRequestModel._({required this.rawValue, required this.string,
required this.createModerationRequestModelVariant2,});
  factory CreateModerationRequestModel.fromJson(Object? json) => CreateModerationRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createModerationRequestModelVariant2: parseAnyOfVariant<CreateModerationRequestModelVariant2>(json, (value) => CreateModerationRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateModerationRequestModelVariant2> createModerationRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createModerationRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createModerationRequestModelVariant2.isPresent) createModerationRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateModerationRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateModerationRequestModel(${toJson()})';
}
