// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput {
  const WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput({this.mapStringdynamic = const Omittable.absent(),
this.string = const Omittable.absent(),
this.$double = const Omittable.absent(),
this.$bool = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput._({required this.rawValue, required this.mapStringdynamic,
required this.string,
required this.$double,
required this.$bool,});
  factory WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput.fromJson(Object? json) => WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput._(
    rawValue: Omittable(json),
    mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
$double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
$bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<String> string;
final Omittable<double> $double;
final Omittable<bool> $bool;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringdynamic.isPresent || string.isPresent || $double.isPresent || $bool.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (string.isPresent) string.value,
if ($double.isPresent) $double.value,
if ($bool.isPresent) $bool.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorDescribeWorkflowInstanceResponseResultStepsWaitForEventOutput(${toJson()})';
}
