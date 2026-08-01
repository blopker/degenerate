// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dnssec_dnssec_multi_signer.dart';import 'dnssec_dnssec_presigned.dart';import 'dnssec_dnssec_use_nsec3.dart';/// Algorithm key code.
extension type const DnssecAlgorithm(String value) {
factory DnssecAlgorithm.fromJson(String json) => DnssecAlgorithm(json);

String toJson() => value;

}
/// Digest hash.
extension type const DnssecDigest(String value) {
factory DnssecDigest.fromJson(String json) => DnssecDigest(json);

String toJson() => value;

}
/// Type of digest algorithm.
extension type const DnssecDigestAlgorithm(String value) {
factory DnssecDigestAlgorithm.fromJson(String json) => DnssecDigestAlgorithm(json);

String toJson() => value;

}
/// Coded type for digest algorithm.
extension type const DnssecDigestType(String value) {
factory DnssecDigestType.fromJson(String json) => DnssecDigestType(json);

String toJson() => value;

}
/// Full DS record.
extension type const DnssecDs(String value) {
factory DnssecDs.fromJson(String json) => DnssecDs(json);

String toJson() => value;

}
/// Flag for DNSSEC record.
extension type const DnssecFlags(double value) {
factory DnssecFlags.fromJson(num json) => DnssecFlags(json.toDouble());

num toJson() => value;

}
/// Code for key tag.
extension type const DnssecKeyTag(double value) {
factory DnssecKeyTag.fromJson(num json) => DnssecKeyTag(json.toDouble());

num toJson() => value;

}
/// Algorithm key type.
extension type const DnssecKeyType(String value) {
factory DnssecKeyType.fromJson(String json) => DnssecKeyType(json);

String toJson() => value;

}
/// When DNSSEC was last modified.
extension type DnssecModifiedOn(DateTime value) {
factory DnssecModifiedOn.fromJson(String json) => DnssecModifiedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// Public key for DS record.
extension type const DnssecPublicKey(String value) {
factory DnssecPublicKey.fromJson(String json) => DnssecPublicKey(json);

String toJson() => value;

}
/// Status of DNSSEC, based on user-desired state and presence of necessary records.
extension type DnssecStatus(dynamic value) {
factory DnssecStatus.fromJson(dynamic json) => DnssecStatus(json);

dynamic toJson() => value;

}
@immutable final class DnssecDnssec {const DnssecDnssec({this.algorithm = const Omittable.absent(), this.digest = const Omittable.absent(), this.digestAlgorithm = const Omittable.absent(), this.digestType = const Omittable.absent(), this.dnssecMultiSigner, this.dnssecPresigned, this.dnssecUseNsec3, this.ds = const Omittable.absent(), this.flags = const Omittable.absent(), this.keyTag = const Omittable.absent(), this.keyType = const Omittable.absent(), this.modifiedOn = const Omittable.absent(), this.publicKey = const Omittable.absent(), this.status = const Omittable.absent(), });

factory DnssecDnssec.fromJson(Map<String, dynamic> json) { return DnssecDnssec(
  algorithm: json.containsKey('algorithm') ? Omittable(json['algorithm'] != null ? DnssecAlgorithm.fromJson(json['algorithm'] as String) : null) : const Omittable.absent(),
  digest: json.containsKey('digest') ? Omittable(json['digest'] != null ? DnssecDigest.fromJson(json['digest'] as String) : null) : const Omittable.absent(),
  digestAlgorithm: json.containsKey('digest_algorithm') ? Omittable(json['digest_algorithm'] != null ? DnssecDigestAlgorithm.fromJson(json['digest_algorithm'] as String) : null) : const Omittable.absent(),
  digestType: json.containsKey('digest_type') ? Omittable(json['digest_type'] != null ? DnssecDigestType.fromJson(json['digest_type'] as String) : null) : const Omittable.absent(),
  dnssecMultiSigner: json['dnssec_multi_signer'] != null ? DnssecDnssecMultiSigner.fromJson(json['dnssec_multi_signer'] as bool) : null,
  dnssecPresigned: json['dnssec_presigned'] != null ? DnssecDnssecPresigned.fromJson(json['dnssec_presigned'] as bool) : null,
  dnssecUseNsec3: json['dnssec_use_nsec3'] != null ? DnssecDnssecUseNsec3.fromJson(json['dnssec_use_nsec3'] as bool) : null,
  ds: json.containsKey('ds') ? Omittable(json['ds'] != null ? DnssecDs.fromJson(json['ds'] as String) : null) : const Omittable.absent(),
  flags: json.containsKey('flags') ? Omittable(json['flags'] != null ? DnssecFlags.fromJson(json['flags'] as num) : null) : const Omittable.absent(),
  keyTag: json.containsKey('key_tag') ? Omittable(json['key_tag'] != null ? DnssecKeyTag.fromJson(json['key_tag'] as num) : null) : const Omittable.absent(),
  keyType: json.containsKey('key_type') ? Omittable(json['key_type'] != null ? DnssecKeyType.fromJson(json['key_type'] as String) : null) : const Omittable.absent(),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DnssecModifiedOn.fromJson(json['modified_on'] as String) : null) : const Omittable.absent(),
  publicKey: json.containsKey('public_key') ? Omittable(json['public_key'] != null ? DnssecPublicKey.fromJson(json['public_key'] as String) : null) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] != null ? DnssecStatus.fromJson(json['status'] as dynamic) : null) : const Omittable.absent(),
); }

/// Algorithm key code.
final Omittable<DnssecAlgorithm?> algorithm;

/// Digest hash.
final Omittable<DnssecDigest?> digest;

/// Type of digest algorithm.
final Omittable<DnssecDigestAlgorithm?> digestAlgorithm;

/// Coded type for digest algorithm.
final Omittable<DnssecDigestType?> digestType;

final DnssecDnssecMultiSigner? dnssecMultiSigner;

final DnssecDnssecPresigned? dnssecPresigned;

final DnssecDnssecUseNsec3? dnssecUseNsec3;

final Omittable<DnssecDs?> ds;

final Omittable<DnssecFlags?> flags;

final Omittable<DnssecKeyTag?> keyTag;

final Omittable<DnssecKeyType?> keyType;

final Omittable<DnssecModifiedOn?> modifiedOn;

final Omittable<DnssecPublicKey?> publicKey;

final Omittable<DnssecStatus?> status;

Map<String, dynamic> toJson() { return {
  if (algorithm.isPresent) 'algorithm': algorithm.value?.toJson(),
  if (digest.isPresent) 'digest': digest.value?.toJson(),
  if (digestAlgorithm.isPresent) 'digest_algorithm': digestAlgorithm.value?.toJson(),
  if (digestType.isPresent) 'digest_type': digestType.value?.toJson(),
  if (dnssecMultiSigner != null) 'dnssec_multi_signer': dnssecMultiSigner?.toJson(),
  if (dnssecPresigned != null) 'dnssec_presigned': dnssecPresigned?.toJson(),
  if (dnssecUseNsec3 != null) 'dnssec_use_nsec3': dnssecUseNsec3?.toJson(),
  if (ds.isPresent) 'ds': ds.value?.toJson(),
  if (flags.isPresent) 'flags': flags.value?.toJson(),
  if (keyTag.isPresent) 'key_tag': keyTag.value?.toJson(),
  if (keyType.isPresent) 'key_type': keyType.value?.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toJson(),
  if (publicKey.isPresent) 'public_key': publicKey.value?.toJson(),
  if (status.isPresent) 'status': status.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'algorithm', 'digest', 'digest_algorithm', 'digest_type', 'dnssec_multi_signer', 'dnssec_presigned', 'dnssec_use_nsec3', 'ds', 'flags', 'key_tag', 'key_type', 'modified_on', 'public_key', 'status'}.contains(key)); } 
DnssecDnssec copyWith({Omittable<DnssecAlgorithm?>? algorithm, Omittable<DnssecDigest?>? digest, Omittable<DnssecDigestAlgorithm?>? digestAlgorithm, Omittable<DnssecDigestType?>? digestType, DnssecDnssecMultiSigner? Function()? dnssecMultiSigner, DnssecDnssecPresigned? Function()? dnssecPresigned, DnssecDnssecUseNsec3? Function()? dnssecUseNsec3, Omittable<DnssecDs?>? ds, Omittable<DnssecFlags?>? flags, Omittable<DnssecKeyTag?>? keyTag, Omittable<DnssecKeyType?>? keyType, Omittable<DnssecModifiedOn?>? modifiedOn, Omittable<DnssecPublicKey?>? publicKey, Omittable<DnssecStatus?>? status, }) { return DnssecDnssec(
  algorithm: algorithm ?? this.algorithm,
  digest: digest ?? this.digest,
  digestAlgorithm: digestAlgorithm ?? this.digestAlgorithm,
  digestType: digestType ?? this.digestType,
  dnssecMultiSigner: dnssecMultiSigner != null ? dnssecMultiSigner() : this.dnssecMultiSigner,
  dnssecPresigned: dnssecPresigned != null ? dnssecPresigned() : this.dnssecPresigned,
  dnssecUseNsec3: dnssecUseNsec3 != null ? dnssecUseNsec3() : this.dnssecUseNsec3,
  ds: ds ?? this.ds,
  flags: flags ?? this.flags,
  keyTag: keyTag ?? this.keyTag,
  keyType: keyType ?? this.keyType,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  publicKey: publicKey ?? this.publicKey,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnssecDnssec &&
          algorithm == other.algorithm &&
          digest == other.digest &&
          digestAlgorithm == other.digestAlgorithm &&
          digestType == other.digestType &&
          dnssecMultiSigner == other.dnssecMultiSigner &&
          dnssecPresigned == other.dnssecPresigned &&
          dnssecUseNsec3 == other.dnssecUseNsec3 &&
          ds == other.ds &&
          flags == other.flags &&
          keyTag == other.keyTag &&
          keyType == other.keyType &&
          modifiedOn == other.modifiedOn &&
          publicKey == other.publicKey &&
          status == other.status; } 
@override int get hashCode { return Object.hash(algorithm, digest, digestAlgorithm, digestType, dnssecMultiSigner, dnssecPresigned, dnssecUseNsec3, ds, flags, keyTag, keyType, modifiedOn, publicKey, status); } 
@override String toString() { return 'DnssecDnssec(algorithm: $algorithm, digest: $digest, digestAlgorithm: $digestAlgorithm, digestType: $digestType, dnssecMultiSigner: $dnssecMultiSigner, dnssecPresigned: $dnssecPresigned, dnssecUseNsec3: $dnssecUseNsec3, ds: $ds, flags: $flags, keyTag: $keyTag, keyType: $keyType, modifiedOn: $modifiedOn, publicKey: $publicKey, status: $status)'; } 
 }
