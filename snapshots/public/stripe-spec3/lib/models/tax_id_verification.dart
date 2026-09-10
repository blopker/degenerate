// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Verification status, one of `pending`, `verified`, `unverified`, or `unavailable`.
@immutable final class TaxIdVerificationStatus {const TaxIdVerificationStatus._(this.value);

factory TaxIdVerificationStatus.fromJson(String json) { return switch (json) {
  'pending' => pending,
  'unavailable' => unavailable,
  'unverified' => unverified,
  'verified' => verified,
  _ => TaxIdVerificationStatus._(json),
}; }

static const TaxIdVerificationStatus pending = TaxIdVerificationStatus._('pending');

static const TaxIdVerificationStatus unavailable = TaxIdVerificationStatus._('unavailable');

static const TaxIdVerificationStatus unverified = TaxIdVerificationStatus._('unverified');

static const TaxIdVerificationStatus verified = TaxIdVerificationStatus._('verified');

static const List<TaxIdVerificationStatus> values = [pending, unavailable, unverified, verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxIdVerificationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxIdVerificationStatus($value)'; } 
 }
/// 
@immutable final class TaxIdVerification {const TaxIdVerification({required this.status, this.verifiedAddress = const Omittable.absent(), this.verifiedName = const Omittable.absent(), });

factory TaxIdVerification.fromJson(Map<String, dynamic> json) { return TaxIdVerification(
  status: TaxIdVerificationStatus.fromJson(json['status'] as String),
  verifiedAddress: json.containsKey('verified_address') ? Omittable(json['verified_address'] as String?) : const Omittable.absent(),
  verifiedName: json.containsKey('verified_name') ? Omittable(json['verified_name'] as String?) : const Omittable.absent(),
); }

/// Verification status, one of `pending`, `verified`, `unverified`, or `unavailable`.
final TaxIdVerificationStatus status;

/// Verified address.
final Omittable<String?> verifiedAddress;

/// Verified name.
final Omittable<String?> verifiedName;

Map<String, dynamic> toJson() { return {
  'status': status.toJson(),
  if (verifiedAddress.isPresent) 'verified_address': verifiedAddress.value,
  if (verifiedName.isPresent) 'verified_name': verifiedName.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
TaxIdVerification copyWith({TaxIdVerificationStatus? status, Omittable<String?>? verifiedAddress, Omittable<String?>? verifiedName, }) { return TaxIdVerification(
  status: status ?? this.status,
  verifiedAddress: verifiedAddress ?? this.verifiedAddress,
  verifiedName: verifiedName ?? this.verifiedName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxIdVerification &&
          status == other.status &&
          verifiedAddress == other.verifiedAddress &&
          verifiedName == other.verifiedName; } 
@override int get hashCode { return Object.hash(status, verifiedAddress, verifiedName); } 
@override String toString() { return 'TaxIdVerification(status: $status, verifiedAddress: $verifiedAddress, verifiedName: $verifiedName)'; } 
 }
