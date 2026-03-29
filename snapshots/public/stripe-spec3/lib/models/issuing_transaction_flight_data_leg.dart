// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingTransactionFlightDataLeg {const IssuingTransactionFlightDataLeg({this.arrivalAirportCode, this.carrier, this.departureAirportCode, this.flightNumber, this.serviceClass, this.stopoverAllowed, });

factory IssuingTransactionFlightDataLeg.fromJson(Map<String, dynamic> json) { return IssuingTransactionFlightDataLeg(
  arrivalAirportCode: json['arrival_airport_code'] as String?,
  carrier: json['carrier'] as String?,
  departureAirportCode: json['departure_airport_code'] as String?,
  flightNumber: json['flight_number'] as String?,
  serviceClass: json['service_class'] as String?,
  stopoverAllowed: json['stopover_allowed'] as bool?,
); }

/// The three-letter IATA airport code of the flight's destination.
final String? arrivalAirportCode;

/// The airline carrier code.
final String? carrier;

/// The three-letter IATA airport code that the flight departed from.
final String? departureAirportCode;

/// The flight number.
final String? flightNumber;

/// The flight's service class.
final String? serviceClass;

/// Whether a stopover is allowed on this flight.
final bool? stopoverAllowed;

Map<String, dynamic> toJson() { return {
  'arrival_airport_code': ?arrivalAirportCode,
  'carrier': ?carrier,
  'departure_airport_code': ?departureAirportCode,
  'flight_number': ?flightNumber,
  'service_class': ?serviceClass,
  'stopover_allowed': ?stopoverAllowed,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingTransactionFlightDataLeg copyWith({String? Function()? arrivalAirportCode, String? Function()? carrier, String? Function()? departureAirportCode, String? Function()? flightNumber, String? Function()? serviceClass, bool? Function()? stopoverAllowed, }) { return IssuingTransactionFlightDataLeg(
  arrivalAirportCode: arrivalAirportCode != null ? arrivalAirportCode() : this.arrivalAirportCode,
  carrier: carrier != null ? carrier() : this.carrier,
  departureAirportCode: departureAirportCode != null ? departureAirportCode() : this.departureAirportCode,
  flightNumber: flightNumber != null ? flightNumber() : this.flightNumber,
  serviceClass: serviceClass != null ? serviceClass() : this.serviceClass,
  stopoverAllowed: stopoverAllowed != null ? stopoverAllowed() : this.stopoverAllowed,
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
