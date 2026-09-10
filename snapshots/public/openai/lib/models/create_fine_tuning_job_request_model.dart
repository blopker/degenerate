// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateFineTuningJobRequestModelVariant2 {const CreateFineTuningJobRequestModelVariant2._(this.value);

factory CreateFineTuningJobRequestModelVariant2.fromJson(String json) {return switch (json) {
  'babbage-002' => babbage002,
  'davinci-002' => davinci002,
  'gpt-3.5-turbo' => gpt35Turbo,
  'gpt-4o-mini' => gpt4oMini,
  _ => CreateFineTuningJobRequestModelVariant2._(json),
};}

static const CreateFineTuningJobRequestModelVariant2 babbage002 = CreateFineTuningJobRequestModelVariant2._('babbage-002');

static const CreateFineTuningJobRequestModelVariant2 davinci002 = CreateFineTuningJobRequestModelVariant2._('davinci-002');

static const CreateFineTuningJobRequestModelVariant2 gpt35Turbo = CreateFineTuningJobRequestModelVariant2._('gpt-3.5-turbo');

static const CreateFineTuningJobRequestModelVariant2 gpt4oMini = CreateFineTuningJobRequestModelVariant2._('gpt-4o-mini');

static const List<CreateFineTuningJobRequestModelVariant2> values = [babbage002, davinci002, gpt35Turbo, gpt4oMini];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateFineTuningJobRequestModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateFineTuningJobRequestModelVariant2($value)';}
}
/// The name of the model to fine-tune. You can select one of the
/// [supported models](/docs/guides/fine-tuning#which-models-can-be-fine-tuned).
/// 
@immutable
final class CreateFineTuningJobRequestModel {
  const CreateFineTuningJobRequestModel({this.string = const Omittable.absent(),
this.createFineTuningJobRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateFineTuningJobRequestModel._({required this.rawValue, required this.string,
required this.createFineTuningJobRequestModelVariant2,});
  factory CreateFineTuningJobRequestModel.fromJson(Object? json) => CreateFineTuningJobRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createFineTuningJobRequestModelVariant2: parseAnyOfVariant<CreateFineTuningJobRequestModelVariant2>(json, (value) => CreateFineTuningJobRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateFineTuningJobRequestModelVariant2> createFineTuningJobRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createFineTuningJobRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createFineTuningJobRequestModelVariant2.isPresent) createFineTuningJobRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateFineTuningJobRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateFineTuningJobRequestModel(${toJson()})';
}
