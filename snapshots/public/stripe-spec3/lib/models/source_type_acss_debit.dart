// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeAcssDebit {const SourceTypeAcssDebit({this.bankAddressCity = const Omittable.absent(), this.bankAddressLine1 = const Omittable.absent(), this.bankAddressLine2 = const Omittable.absent(), this.bankAddressPostalCode = const Omittable.absent(), this.bankName = const Omittable.absent(), this.category = const Omittable.absent(), this.country = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.routingNumber = const Omittable.absent(), });

factory SourceTypeAcssDebit.fromJson(Map<String, dynamic> json) { return SourceTypeAcssDebit(
  bankAddressCity: json.containsKey('bank_address_city') ? Omittable(json['bank_address_city'] as String?) : const Omittable.absent(),
  bankAddressLine1: json.containsKey('bank_address_line_1') ? Omittable(json['bank_address_line_1'] as String?) : const Omittable.absent(),
  bankAddressLine2: json.containsKey('bank_address_line_2') ? Omittable(json['bank_address_line_2'] as String?) : const Omittable.absent(),
  bankAddressPostalCode: json.containsKey('bank_address_postal_code') ? Omittable(json['bank_address_postal_code'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  category: json.containsKey('category') ? Omittable(json['category'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bankAddressCity;

final Omittable<String?> bankAddressLine1;

final Omittable<String?> bankAddressLine2;

final Omittable<String?> bankAddressPostalCode;

final Omittable<String?> bankName;

final Omittable<String?> category;

final Omittable<String?> country;

final Omittable<String?> fingerprint;

final Omittable<String?> last4;

final Omittable<String?> routingNumber;

Map<String, dynamic> toJson() { return {
  if (bankAddressCity.isPresent) 'bank_address_city': bankAddressCity.value,
  if (bankAddressLine1.isPresent) 'bank_address_line_1': bankAddressLine1.value,
  if (bankAddressLine2.isPresent) 'bank_address_line_2': bankAddressLine2.value,
  if (bankAddressPostalCode.isPresent) 'bank_address_postal_code': bankAddressPostalCode.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (category.isPresent) 'category': category.value,
  if (country.isPresent) 'country': country.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_address_city', 'bank_address_line_1', 'bank_address_line_2', 'bank_address_postal_code', 'bank_name', 'category', 'country', 'fingerprint', 'last4', 'routing_number'}.contains(key)); } 
SourceTypeAcssDebit copyWith({Omittable<String?>? bankAddressCity, Omittable<String?>? bankAddressLine1, Omittable<String?>? bankAddressLine2, Omittable<String?>? bankAddressPostalCode, Omittable<String?>? bankName, Omittable<String?>? category, Omittable<String?>? country, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? routingNumber, }) { return SourceTypeAcssDebit(
  bankAddressCity: bankAddressCity ?? this.bankAddressCity,
  bankAddressLine1: bankAddressLine1 ?? this.bankAddressLine1,
  bankAddressLine2: bankAddressLine2 ?? this.bankAddressLine2,
  bankAddressPostalCode: bankAddressPostalCode ?? this.bankAddressPostalCode,
  bankName: bankName ?? this.bankName,
  category: category ?? this.category,
  country: country ?? this.country,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  routingNumber: routingNumber ?? this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAcssDebit &&
          bankAddressCity == other.bankAddressCity &&
          bankAddressLine1 == other.bankAddressLine1 &&
          bankAddressLine2 == other.bankAddressLine2 &&
          bankAddressPostalCode == other.bankAddressPostalCode &&
          bankName == other.bankName &&
          category == other.category &&
          country == other.country &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(bankAddressCity, bankAddressLine1, bankAddressLine2, bankAddressPostalCode, bankName, category, country, fingerprint, last4, routingNumber); } 
@override String toString() { return 'SourceTypeAcssDebit(bankAddressCity: $bankAddressCity, bankAddressLine1: $bankAddressLine1, bankAddressLine2: $bankAddressLine2, bankAddressPostalCode: $bankAddressPostalCode, bankName: $bankName, category: $category, country: $country, fingerprint: $fingerprint, last4: $last4, routingNumber: $routingNumber)'; } 
 }
