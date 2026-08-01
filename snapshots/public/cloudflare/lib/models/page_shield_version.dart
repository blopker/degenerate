// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_cryptomining_score.dart';import 'page_shield_dataflow_score.dart';import 'page_shield_fetched_at.dart';import 'page_shield_hash.dart';import 'page_shield_js_integrity_score.dart';import 'page_shield_magecart_score.dart';import 'page_shield_malware_score.dart';import 'page_shield_obfuscation_score.dart';/// The version of the analyzed script.
@immutable final class PageShieldVersion {const PageShieldVersion({this.cryptominingScore = const Omittable.absent(), this.dataflowScore = const Omittable.absent(), this.fetchedAt = const Omittable.absent(), this.hash = const Omittable.absent(), this.jsIntegrityScore = const Omittable.absent(), this.magecartScore = const Omittable.absent(), this.malwareScore = const Omittable.absent(), this.obfuscationScore = const Omittable.absent(), });

factory PageShieldVersion.fromJson(Map<String, dynamic> json) { return PageShieldVersion(
  cryptominingScore: json.containsKey('cryptomining_score') ? Omittable(json['cryptomining_score'] != null ? PageShieldCryptominingScore.fromJson(json['cryptomining_score'] as num) : null) : const Omittable.absent(),
  dataflowScore: json.containsKey('dataflow_score') ? Omittable(json['dataflow_score'] != null ? PageShieldDataflowScore.fromJson(json['dataflow_score'] as num) : null) : const Omittable.absent(),
  fetchedAt: json.containsKey('fetched_at') ? Omittable(json['fetched_at'] != null ? PageShieldFetchedAt.fromJson(json['fetched_at'] as String) : null) : const Omittable.absent(),
  hash: json.containsKey('hash') ? Omittable(json['hash'] != null ? PageShieldHash.fromJson(json['hash'] as String) : null) : const Omittable.absent(),
  jsIntegrityScore: json.containsKey('js_integrity_score') ? Omittable(json['js_integrity_score'] != null ? PageShieldJsIntegrityScore.fromJson(json['js_integrity_score'] as num) : null) : const Omittable.absent(),
  magecartScore: json.containsKey('magecart_score') ? Omittable(json['magecart_score'] != null ? PageShieldMagecartScore.fromJson(json['magecart_score'] as num) : null) : const Omittable.absent(),
  malwareScore: json.containsKey('malware_score') ? Omittable(json['malware_score'] != null ? PageShieldMalwareScore.fromJson(json['malware_score'] as num) : null) : const Omittable.absent(),
  obfuscationScore: json.containsKey('obfuscation_score') ? Omittable(json['obfuscation_score'] != null ? PageShieldObfuscationScore.fromJson(json['obfuscation_score'] as num) : null) : const Omittable.absent(),
); }

/// The cryptomining score of the JavaScript content.
final Omittable<PageShieldCryptominingScore?> cryptominingScore;

/// The dataflow score of the JavaScript content.
final Omittable<PageShieldDataflowScore?> dataflowScore;

/// The timestamp of when the script was last fetched.
final Omittable<PageShieldFetchedAt?> fetchedAt;

/// The computed hash of the analyzed script.
final Omittable<PageShieldHash?> hash;

/// The integrity score of the JavaScript content.
final Omittable<PageShieldJsIntegrityScore?> jsIntegrityScore;

/// The magecart score of the JavaScript content.
final Omittable<PageShieldMagecartScore?> magecartScore;

/// The malware score of the JavaScript content.
final Omittable<PageShieldMalwareScore?> malwareScore;

/// The obfuscation score of the JavaScript content.
final Omittable<PageShieldObfuscationScore?> obfuscationScore;

Map<String, dynamic> toJson() { return {
  if (cryptominingScore.isPresent) 'cryptomining_score': cryptominingScore.value?.toJson(),
  if (dataflowScore.isPresent) 'dataflow_score': dataflowScore.value?.toJson(),
  if (fetchedAt.isPresent) 'fetched_at': fetchedAt.value?.toJson(),
  if (hash.isPresent) 'hash': hash.value?.toJson(),
  if (jsIntegrityScore.isPresent) 'js_integrity_score': jsIntegrityScore.value?.toJson(),
  if (magecartScore.isPresent) 'magecart_score': magecartScore.value?.toJson(),
  if (malwareScore.isPresent) 'malware_score': malwareScore.value?.toJson(),
  if (obfuscationScore.isPresent) 'obfuscation_score': obfuscationScore.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cryptomining_score', 'dataflow_score', 'fetched_at', 'hash', 'js_integrity_score', 'magecart_score', 'malware_score', 'obfuscation_score'}.contains(key)); } 
PageShieldVersion copyWith({Omittable<PageShieldCryptominingScore?>? cryptominingScore, Omittable<PageShieldDataflowScore?>? dataflowScore, Omittable<PageShieldFetchedAt?>? fetchedAt, Omittable<PageShieldHash?>? hash, Omittable<PageShieldJsIntegrityScore?>? jsIntegrityScore, Omittable<PageShieldMagecartScore?>? magecartScore, Omittable<PageShieldMalwareScore?>? malwareScore, Omittable<PageShieldObfuscationScore?>? obfuscationScore, }) { return PageShieldVersion(
  cryptominingScore: cryptominingScore ?? this.cryptominingScore,
  dataflowScore: dataflowScore ?? this.dataflowScore,
  fetchedAt: fetchedAt ?? this.fetchedAt,
  hash: hash ?? this.hash,
  jsIntegrityScore: jsIntegrityScore ?? this.jsIntegrityScore,
  magecartScore: magecartScore ?? this.magecartScore,
  malwareScore: malwareScore ?? this.malwareScore,
  obfuscationScore: obfuscationScore ?? this.obfuscationScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldVersion &&
          cryptominingScore == other.cryptominingScore &&
          dataflowScore == other.dataflowScore &&
          fetchedAt == other.fetchedAt &&
          hash == other.hash &&
          jsIntegrityScore == other.jsIntegrityScore &&
          magecartScore == other.magecartScore &&
          malwareScore == other.malwareScore &&
          obfuscationScore == other.obfuscationScore; } 
@override int get hashCode { return Object.hash(cryptominingScore, dataflowScore, fetchedAt, hash, jsIntegrityScore, magecartScore, malwareScore, obfuscationScore); } 
@override String toString() { return 'PageShieldVersion(cryptominingScore: $cryptominingScore, dataflowScore: $dataflowScore, fetchedAt: $fetchedAt, hash: $hash, jsIntegrityScore: $jsIntegrityScore, magecartScore: $magecartScore, malwareScore: $malwareScore, obfuscationScore: $obfuscationScore)'; } 
 }
