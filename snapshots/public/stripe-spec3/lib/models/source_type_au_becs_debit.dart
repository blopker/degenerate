// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeAuBecsDebit {const SourceTypeAuBecsDebit({this.bsbNumber, this.fingerprint, this.last4, });

factory SourceTypeAuBecsDebit.fromJson(Map<String, dynamic> json) { return SourceTypeAuBecsDebit(
  bsbNumber: json['bsb_number'] as String?,
  fingerprint: json['fingerprint'] as String?,
  last4: json['last4'] as String?,
); }

final String? bsbNumber;

final String? fingerprint;

final String? last4;

Map<String, dynamic> toJson() { return {
  'bsb_number': ?bsbNumber,
  'fingerprint': ?fingerprint,
  'last4': ?last4,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bsb_number', 'fingerprint', 'last4'}.contains(key)); } 
SourceTypeAuBecsDebit copyWith({String? Function()? bsbNumber, String? Function()? fingerprint, String? Function()? last4, }) { return SourceTypeAuBecsDebit(
  bsbNumber: bsbNumber != null ? bsbNumber() : this.bsbNumber,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  last4: last4 != null ? last4() : this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAuBecsDebit &&
          bsbNumber == other.bsbNumber &&
          fingerprint == other.fingerprint &&
          last4 == other.last4; } 
@override int get hashCode { return Object.hash(bsbNumber, fingerprint, last4); } 
@override String toString() { return 'SourceTypeAuBecsDebit(bsbNumber: $bsbNumber, fingerprint: $fingerprint, last4: $last4)'; } 
 }
