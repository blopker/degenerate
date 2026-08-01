// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeSepaDebit {const SourceTypeSepaDebit({this.bankCode = const Omittable.absent(), this.branchCode = const Omittable.absent(), this.country = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandateReference = const Omittable.absent(), this.mandateUrl = const Omittable.absent(), });

factory SourceTypeSepaDebit.fromJson(Map<String, dynamic> json) { return SourceTypeSepaDebit(
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  branchCode: json.containsKey('branch_code') ? Omittable(json['branch_code'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandateReference: json.containsKey('mandate_reference') ? Omittable(json['mandate_reference'] as String?) : const Omittable.absent(),
  mandateUrl: json.containsKey('mandate_url') ? Omittable(json['mandate_url'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bankCode;

final Omittable<String?> branchCode;

final Omittable<String?> country;

final Omittable<String?> fingerprint;

final Omittable<String?> last4;

final Omittable<String?> mandateReference;

final Omittable<String?> mandateUrl;

Map<String, dynamic> toJson() { return {
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (branchCode.isPresent) 'branch_code': branchCode.value,
  if (country.isPresent) 'country': country.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (mandateReference.isPresent) 'mandate_reference': mandateReference.value,
  if (mandateUrl.isPresent) 'mandate_url': mandateUrl.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'branch_code', 'country', 'fingerprint', 'last4', 'mandate_reference', 'mandate_url'}.contains(key)); } 
SourceTypeSepaDebit copyWith({Omittable<String?>? bankCode, Omittable<String?>? branchCode, Omittable<String?>? country, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? mandateReference, Omittable<String?>? mandateUrl, }) { return SourceTypeSepaDebit(
  bankCode: bankCode ?? this.bankCode,
  branchCode: branchCode ?? this.branchCode,
  country: country ?? this.country,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  mandateReference: mandateReference ?? this.mandateReference,
  mandateUrl: mandateUrl ?? this.mandateUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeSepaDebit &&
          bankCode == other.bankCode &&
          branchCode == other.branchCode &&
          country == other.country &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandateReference == other.mandateReference &&
          mandateUrl == other.mandateUrl; } 
@override int get hashCode { return Object.hash(bankCode, branchCode, country, fingerprint, last4, mandateReference, mandateUrl); } 
@override String toString() { return 'SourceTypeSepaDebit(bankCode: $bankCode, branchCode: $branchCode, country: $country, fingerprint: $fingerprint, last4: $last4, mandateReference: $mandateReference, mandateUrl: $mandateUrl)'; } 
 }
