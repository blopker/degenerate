// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeAchDebit {const SourceTypeAchDebit({this.bankName = const Omittable.absent(), this.country = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.routingNumber = const Omittable.absent(), this.type = const Omittable.absent(), });

factory SourceTypeAchDebit.fromJson(Map<String, dynamic> json) { return SourceTypeAchDebit(
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
  type: json.containsKey('type') ? Omittable(json['type'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bankName;

final Omittable<String?> country;

final Omittable<String?> fingerprint;

final Omittable<String?> last4;

final Omittable<String?> routingNumber;

final Omittable<String?> type;

Map<String, dynamic> toJson() { return {
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (country.isPresent) 'country': country.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
  if (type.isPresent) 'type': type.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_name', 'country', 'fingerprint', 'last4', 'routing_number', 'type'}.contains(key)); } 
SourceTypeAchDebit copyWith({Omittable<String?>? bankName, Omittable<String?>? country, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? routingNumber, Omittable<String?>? type, }) { return SourceTypeAchDebit(
  bankName: bankName ?? this.bankName,
  country: country ?? this.country,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  routingNumber: routingNumber ?? this.routingNumber,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAchDebit &&
          bankName == other.bankName &&
          country == other.country &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          routingNumber == other.routingNumber &&
          type == other.type; } 
@override int get hashCode { return Object.hash(bankName, country, fingerprint, last4, routingNumber, type); } 
@override String toString() { return 'SourceTypeAchDebit(bankName: $bankName, country: $country, fingerprint: $fingerprint, last4: $last4, routingNumber: $routingNumber, type: $type)'; } 
 }
