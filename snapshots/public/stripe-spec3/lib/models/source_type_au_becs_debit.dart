// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeAuBecsDebit {const SourceTypeAuBecsDebit({this.bsbNumber = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), });

factory SourceTypeAuBecsDebit.fromJson(Map<String, dynamic> json) { return SourceTypeAuBecsDebit(
  bsbNumber: json.containsKey('bsb_number') ? Omittable(json['bsb_number'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> bsbNumber;

final Omittable<String?> fingerprint;

final Omittable<String?> last4;

Map<String, dynamic> toJson() { return {
  if (bsbNumber.isPresent) 'bsb_number': bsbNumber.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bsb_number', 'fingerprint', 'last4'}.contains(key)); } 
SourceTypeAuBecsDebit copyWith({Omittable<String?>? bsbNumber, Omittable<String?>? fingerprint, Omittable<String?>? last4, }) { return SourceTypeAuBecsDebit(
  bsbNumber: bsbNumber ?? this.bsbNumber,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeAuBecsDebit &&
          bsbNumber == other.bsbNumber &&
          fingerprint == other.fingerprint &&
          last4 == other.last4; } 
@override int get hashCode { return Object.hash(bsbNumber, fingerprint, last4); } 
@override String toString() { return 'SourceTypeAuBecsDebit(bsbNumber: $bsbNumber, fingerprint: $fingerprint, last4: $last4)'; } 
 }
