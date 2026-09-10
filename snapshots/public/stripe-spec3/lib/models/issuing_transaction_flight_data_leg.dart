// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionFlightDataLeg {const IssuingTransactionFlightDataLeg({this.arrivalAirportCode = const Omittable.absent(), this.carrier = const Omittable.absent(), this.departureAirportCode = const Omittable.absent(), this.flightNumber = const Omittable.absent(), this.serviceClass = const Omittable.absent(), this.stopoverAllowed = const Omittable.absent(), });

factory IssuingTransactionFlightDataLeg.fromJson(Map<String, dynamic> json) { return IssuingTransactionFlightDataLeg(
  arrivalAirportCode: json.containsKey('arrival_airport_code') ? Omittable(json['arrival_airport_code'] as String?) : const Omittable.absent(),
  carrier: json.containsKey('carrier') ? Omittable(json['carrier'] as String?) : const Omittable.absent(),
  departureAirportCode: json.containsKey('departure_airport_code') ? Omittable(json['departure_airport_code'] as String?) : const Omittable.absent(),
  flightNumber: json.containsKey('flight_number') ? Omittable(json['flight_number'] as String?) : const Omittable.absent(),
  serviceClass: json.containsKey('service_class') ? Omittable(json['service_class'] as String?) : const Omittable.absent(),
  stopoverAllowed: json.containsKey('stopover_allowed') ? Omittable(json['stopover_allowed'] as bool?) : const Omittable.absent(),
); }

/// The three-letter IATA airport code of the flight's destination.
final Omittable<String?> arrivalAirportCode;

/// The airline carrier code.
final Omittable<String?> carrier;

/// The three-letter IATA airport code that the flight departed from.
final Omittable<String?> departureAirportCode;

/// The flight number.
final Omittable<String?> flightNumber;

/// The flight's service class.
final Omittable<String?> serviceClass;

/// Whether a stopover is allowed on this flight.
final Omittable<bool?> stopoverAllowed;

Map<String, dynamic> toJson() { return {
  if (arrivalAirportCode.isPresent) 'arrival_airport_code': arrivalAirportCode.value,
  if (carrier.isPresent) 'carrier': carrier.value,
  if (departureAirportCode.isPresent) 'departure_airport_code': departureAirportCode.value,
  if (flightNumber.isPresent) 'flight_number': flightNumber.value,
  if (serviceClass.isPresent) 'service_class': serviceClass.value,
  if (stopoverAllowed.isPresent) 'stopover_allowed': stopoverAllowed.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'arrival_airport_code', 'carrier', 'departure_airport_code', 'flight_number', 'service_class', 'stopover_allowed'}.contains(key)); } 
IssuingTransactionFlightDataLeg copyWith({Omittable<String?>? arrivalAirportCode, Omittable<String?>? carrier, Omittable<String?>? departureAirportCode, Omittable<String?>? flightNumber, Omittable<String?>? serviceClass, Omittable<bool?>? stopoverAllowed, }) { return IssuingTransactionFlightDataLeg(
  arrivalAirportCode: arrivalAirportCode ?? this.arrivalAirportCode,
  carrier: carrier ?? this.carrier,
  departureAirportCode: departureAirportCode ?? this.departureAirportCode,
  flightNumber: flightNumber ?? this.flightNumber,
  serviceClass: serviceClass ?? this.serviceClass,
  stopoverAllowed: stopoverAllowed ?? this.stopoverAllowed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFlightDataLeg &&
          arrivalAirportCode == other.arrivalAirportCode &&
          carrier == other.carrier &&
          departureAirportCode == other.departureAirportCode &&
          flightNumber == other.flightNumber &&
          serviceClass == other.serviceClass &&
          stopoverAllowed == other.stopoverAllowed; } 
@override int get hashCode { return Object.hash(arrivalAirportCode, carrier, departureAirportCode, flightNumber, serviceClass, stopoverAllowed); } 
@override String toString() { return 'IssuingTransactionFlightDataLeg(arrivalAirportCode: $arrivalAirportCode, carrier: $carrier, departureAirportCode: $departureAirportCode, flightNumber: $flightNumber, serviceClass: $serviceClass, stopoverAllowed: $stopoverAllowed)'; } 
 }
