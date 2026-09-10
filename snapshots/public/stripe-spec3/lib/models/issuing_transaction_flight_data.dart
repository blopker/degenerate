// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_flight_data_leg.dart';/// 
@immutable final class IssuingTransactionFlightData {const IssuingTransactionFlightData({this.departureAt = const Omittable.absent(), this.passengerName = const Omittable.absent(), this.refundable = const Omittable.absent(), this.segments = const Omittable.absent(), this.travelAgency = const Omittable.absent(), });

factory IssuingTransactionFlightData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFlightData(
  departureAt: json.containsKey('departure_at') ? Omittable(json['departure_at'] != null ? (json['departure_at'] as num).toInt() : null) : const Omittable.absent(),
  passengerName: json.containsKey('passenger_name') ? Omittable(json['passenger_name'] as String?) : const Omittable.absent(),
  refundable: json.containsKey('refundable') ? Omittable(json['refundable'] as bool?) : const Omittable.absent(),
  segments: json.containsKey('segments') ? Omittable((json['segments'] as List<dynamic>?)?.map((e) => IssuingTransactionFlightDataLeg.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  travelAgency: json.containsKey('travel_agency') ? Omittable(json['travel_agency'] as String?) : const Omittable.absent(),
); }

/// The time that the flight departed.
final Omittable<int?> departureAt;

/// The name of the passenger.
final Omittable<String?> passengerName;

/// Whether the ticket is refundable.
final Omittable<bool?> refundable;

/// The legs of the trip.
final Omittable<List<IssuingTransactionFlightDataLeg>?> segments;

/// The travel agency that issued the ticket.
final Omittable<String?> travelAgency;

Map<String, dynamic> toJson() { return {
  if (departureAt.isPresent) 'departure_at': departureAt.value,
  if (passengerName.isPresent) 'passenger_name': passengerName.value,
  if (refundable.isPresent) 'refundable': refundable.value,
  if (segments.isPresent) 'segments': segments.value?.map((e) => e.toJson()).toList(),
  if (travelAgency.isPresent) 'travel_agency': travelAgency.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'departure_at', 'passenger_name', 'refundable', 'segments', 'travel_agency'}.contains(key)); } 
IssuingTransactionFlightData copyWith({Omittable<int?>? departureAt, Omittable<String?>? passengerName, Omittable<bool?>? refundable, Omittable<List<IssuingTransactionFlightDataLeg>?>? segments, Omittable<String?>? travelAgency, }) { return IssuingTransactionFlightData(
  departureAt: departureAt ?? this.departureAt,
  passengerName: passengerName ?? this.passengerName,
  refundable: refundable ?? this.refundable,
  segments: segments ?? this.segments,
  travelAgency: travelAgency ?? this.travelAgency,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFlightData &&
          departureAt == other.departureAt &&
          passengerName == other.passengerName &&
          refundable == other.refundable &&
          segments.isPresent == other.segments.isPresent &&
          listEquals(segments.value, other.segments.value) &&
          travelAgency == other.travelAgency; } 
@override int get hashCode { return Object.hash(departureAt, passengerName, refundable, Object.hashAll(segments.value ?? const []), travelAgency); } 
@override String toString() { return 'IssuingTransactionFlightData(departureAt: $departureAt, passengerName: $passengerName, refundable: $refundable, segments: $segments, travelAgency: $travelAgency)'; } 
 }
