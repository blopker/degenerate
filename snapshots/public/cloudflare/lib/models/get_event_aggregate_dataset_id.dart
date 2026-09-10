// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Dataset ID(s) to filter by. Can be a single dataset ID or array of dataset IDs. If not provided, uses default dataset
@immutable
final class GetEventAggregateDatasetId {
  const GetEventAggregateDatasetId({this.string = const Omittable.absent(),
this.listString = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetEventAggregateDatasetId._({required this.rawValue, required this.string,
required this.listString,});
  factory GetEventAggregateDatasetId.fromJson(Object? json) => GetEventAggregateDatasetId._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<String>> listString;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listString.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listString.isPresent) listString.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetEventAggregateDatasetId && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetEventAggregateDatasetId(${toJson()})';
}
