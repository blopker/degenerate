// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checks_update_request_completed.dart';import 'checks_update_request_variant2.dart';
@immutable
final class ChecksUpdateRequest {
  const ChecksUpdateRequest({this.checksUpdateRequestCompleted = const Omittable.absent(),
this.checksUpdateRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ChecksUpdateRequest._({required this.rawValue, required this.checksUpdateRequestCompleted,
required this.checksUpdateRequestVariant2,});
  factory ChecksUpdateRequest.fromJson(Object? json) => ChecksUpdateRequest._(
    rawValue: Omittable(json),
    checksUpdateRequestCompleted: parseAnyOfVariant<ChecksUpdateRequestCompleted>(json, (value) => ChecksUpdateRequestCompleted.fromJson(value! as Map<String, dynamic>)),
checksUpdateRequestVariant2: parseAnyOfVariant<ChecksUpdateRequestVariant2>(json, (value) => ChecksUpdateRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ChecksUpdateRequestCompleted> checksUpdateRequestCompleted;
final Omittable<ChecksUpdateRequestVariant2> checksUpdateRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => checksUpdateRequestCompleted.isPresent || checksUpdateRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (checksUpdateRequestCompleted.isPresent) checksUpdateRequestCompleted.value?.toJson(),
if (checksUpdateRequestVariant2.isPresent) checksUpdateRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ChecksUpdateRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ChecksUpdateRequest(${toJson()})';
}
