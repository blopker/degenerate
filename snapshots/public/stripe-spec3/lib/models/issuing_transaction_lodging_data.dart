// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionLodgingData {const IssuingTransactionLodgingData({this.checkInAt = const Omittable.absent(), this.nights = const Omittable.absent(), });

factory IssuingTransactionLodgingData.fromJson(Map<String, dynamic> json) { return IssuingTransactionLodgingData(
  checkInAt: json.containsKey('check_in_at') ? Omittable(json['check_in_at'] != null ? (json['check_in_at'] as num).toInt() : null) : const Omittable.absent(),
  nights: json.containsKey('nights') ? Omittable(json['nights'] != null ? (json['nights'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The time of checking into the lodging.
final Omittable<int?> checkInAt;

/// The number of nights stayed at the lodging.
final Omittable<int?> nights;

Map<String, dynamic> toJson() { return {
  if (checkInAt.isPresent) 'check_in_at': checkInAt.value,
  if (nights.isPresent) 'nights': nights.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'check_in_at', 'nights'}.contains(key)); } 
IssuingTransactionLodgingData copyWith({Omittable<int?>? checkInAt, Omittable<int?>? nights, }) { return IssuingTransactionLodgingData(
  checkInAt: checkInAt ?? this.checkInAt,
  nights: nights ?? this.nights,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionLodgingData &&
          checkInAt == other.checkInAt &&
          nights == other.nights; } 
@override int get hashCode { return Object.hash(checkInAt, nights); } 
@override String toString() { return 'IssuingTransactionLodgingData(checkInAt: $checkInAt, nights: $nights)'; } 
 }
