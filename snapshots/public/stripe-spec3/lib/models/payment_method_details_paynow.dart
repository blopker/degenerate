// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPaynow {const PaymentMethodDetailsPaynow({this.location, this.reader, this.reference = const Omittable.absent(), });

factory PaymentMethodDetailsPaynow.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaynow(
  location: json['location'] as String?,
  reader: json['reader'] as String?,
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

/// ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
final String? location;

/// ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
final String? reader;

/// Reference number associated with this PayNow payment
final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  'location': ?location,
  'reader': ?reader,
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'location', 'reader', 'reference'}.contains(key)); } 
PaymentMethodDetailsPaynow copyWith({String? Function()? location, String? Function()? reader, Omittable<String?>? reference, }) { return PaymentMethodDetailsPaynow(
  location: location != null ? location() : this.location,
  reader: reader != null ? reader() : this.reader,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaynow &&
          location == other.location &&
          reader == other.reader &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(location, reader, reference); } 
@override String toString() { return 'PaymentMethodDetailsPaynow(location: $location, reader: $reader, reference: $reference)'; } 
 }
