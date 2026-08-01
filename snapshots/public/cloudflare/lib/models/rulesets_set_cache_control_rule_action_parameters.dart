// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'remove_directive.dart';import 'remove_directive2.dart';import 'remove_directive3.dart';import 'rulesets_set_cache_control_directive.dart';import 'rulesets_set_cache_control_directive_with_qualifiers.dart';import 'rulesets_set_cache_control_directive_with_value.dart';import 'set_directive.dart';import 'set_directive2.dart';import 'set_directive3.dart';@immutable final class RulesetsSetCacheControlRuleActionParameters {const RulesetsSetCacheControlRuleActionParameters({this.immutable, this.maxAge, this.mustRevalidate, this.mustUnderstand, this.noCache, this.noStore, this.noTransform, this.private, this.proxyRevalidate, this.public, this.sMaxage, this.staleIfError, this.staleWhileRevalidate, });

factory RulesetsSetCacheControlRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheControlRuleActionParameters(
  immutable: json['immutable'] != null ? OneOf2.parse(json['immutable'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  maxAge: json['max-age'] != null ? OneOf2.parse(json['max-age'], fromA: (v) => SetDirective3.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective3.fromJson(v as Map<String, dynamic>),) : null,
  mustRevalidate: json['must-revalidate'] != null ? OneOf2.parse(json['must-revalidate'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  mustUnderstand: json['must-understand'] != null ? OneOf2.parse(json['must-understand'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  noCache: json['no-cache'] != null ? OneOf2.parse(json['no-cache'], fromA: (v) => SetDirective2.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective2.fromJson(v as Map<String, dynamic>),) : null,
  noStore: json['no-store'] != null ? OneOf2.parse(json['no-store'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  noTransform: json['no-transform'] != null ? OneOf2.parse(json['no-transform'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  private: json['private'] != null ? OneOf2.parse(json['private'], fromA: (v) => SetDirective2.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective2.fromJson(v as Map<String, dynamic>),) : null,
  proxyRevalidate: json['proxy-revalidate'] != null ? OneOf2.parse(json['proxy-revalidate'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  public: json['public'] != null ? OneOf2.parse(json['public'], fromA: (v) => SetDirective.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective.fromJson(v as Map<String, dynamic>),) : null,
  sMaxage: json['s-maxage'] != null ? OneOf2.parse(json['s-maxage'], fromA: (v) => SetDirective3.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective3.fromJson(v as Map<String, dynamic>),) : null,
  staleIfError: json['stale-if-error'] != null ? OneOf2.parse(json['stale-if-error'], fromA: (v) => SetDirective3.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective3.fromJson(v as Map<String, dynamic>),) : null,
  staleWhileRevalidate: json['stale-while-revalidate'] != null ? OneOf2.parse(json['stale-while-revalidate'], fromA: (v) => SetDirective3.fromJson(v as Map<String, dynamic>), fromB: (v) => RemoveDirective3.fromJson(v as Map<String, dynamic>),) : null,
); }

final RulesetsSetCacheControlDirective? immutable;

final RulesetsSetCacheControlDirectiveWithValue? maxAge;

final RulesetsSetCacheControlDirective? mustRevalidate;

final RulesetsSetCacheControlDirective? mustUnderstand;

final RulesetsSetCacheControlDirectiveWithQualifiers? noCache;

final RulesetsSetCacheControlDirective? noStore;

final RulesetsSetCacheControlDirective? noTransform;

final RulesetsSetCacheControlDirectiveWithQualifiers? private;

final RulesetsSetCacheControlDirective? proxyRevalidate;

final RulesetsSetCacheControlDirective? public;

final RulesetsSetCacheControlDirectiveWithValue? sMaxage;

final RulesetsSetCacheControlDirectiveWithValue? staleIfError;

final RulesetsSetCacheControlDirectiveWithValue? staleWhileRevalidate;

Map<String, dynamic> toJson() { return {
  if (immutable != null) 'immutable': immutable?.toJson(),
  if (maxAge != null) 'max-age': maxAge?.toJson(),
  if (mustRevalidate != null) 'must-revalidate': mustRevalidate?.toJson(),
  if (mustUnderstand != null) 'must-understand': mustUnderstand?.toJson(),
  if (noCache != null) 'no-cache': noCache?.toJson(),
  if (noStore != null) 'no-store': noStore?.toJson(),
  if (noTransform != null) 'no-transform': noTransform?.toJson(),
  if (private != null) 'private': private?.toJson(),
  if (proxyRevalidate != null) 'proxy-revalidate': proxyRevalidate?.toJson(),
  if (public != null) 'public': public?.toJson(),
  if (sMaxage != null) 's-maxage': sMaxage?.toJson(),
  if (staleIfError != null) 'stale-if-error': staleIfError?.toJson(),
  if (staleWhileRevalidate != null) 'stale-while-revalidate': staleWhileRevalidate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'immutable', 'max-age', 'must-revalidate', 'must-understand', 'no-cache', 'no-store', 'no-transform', 'private', 'proxy-revalidate', 'public', 's-maxage', 'stale-if-error', 'stale-while-revalidate'}.contains(key)); } 
RulesetsSetCacheControlRuleActionParameters copyWith({RulesetsSetCacheControlDirective? Function()? immutable, RulesetsSetCacheControlDirectiveWithValue? Function()? maxAge, RulesetsSetCacheControlDirective? Function()? mustRevalidate, RulesetsSetCacheControlDirective? Function()? mustUnderstand, RulesetsSetCacheControlDirectiveWithQualifiers? Function()? noCache, RulesetsSetCacheControlDirective? Function()? noStore, RulesetsSetCacheControlDirective? Function()? noTransform, RulesetsSetCacheControlDirectiveWithQualifiers? Function()? private, RulesetsSetCacheControlDirective? Function()? proxyRevalidate, RulesetsSetCacheControlDirective? Function()? public, RulesetsSetCacheControlDirectiveWithValue? Function()? sMaxage, RulesetsSetCacheControlDirectiveWithValue? Function()? staleIfError, RulesetsSetCacheControlDirectiveWithValue? Function()? staleWhileRevalidate, }) { return RulesetsSetCacheControlRuleActionParameters(
  immutable: immutable != null ? immutable() : this.immutable,
  maxAge: maxAge != null ? maxAge() : this.maxAge,
  mustRevalidate: mustRevalidate != null ? mustRevalidate() : this.mustRevalidate,
  mustUnderstand: mustUnderstand != null ? mustUnderstand() : this.mustUnderstand,
  noCache: noCache != null ? noCache() : this.noCache,
  noStore: noStore != null ? noStore() : this.noStore,
  noTransform: noTransform != null ? noTransform() : this.noTransform,
  private: private != null ? private() : this.private,
  proxyRevalidate: proxyRevalidate != null ? proxyRevalidate() : this.proxyRevalidate,
  public: public != null ? public() : this.public,
  sMaxage: sMaxage != null ? sMaxage() : this.sMaxage,
  staleIfError: staleIfError != null ? staleIfError() : this.staleIfError,
  staleWhileRevalidate: staleWhileRevalidate != null ? staleWhileRevalidate() : this.staleWhileRevalidate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheControlRuleActionParameters &&
          immutable == other.immutable &&
          maxAge == other.maxAge &&
          mustRevalidate == other.mustRevalidate &&
          mustUnderstand == other.mustUnderstand &&
          noCache == other.noCache &&
          noStore == other.noStore &&
          noTransform == other.noTransform &&
          private == other.private &&
          proxyRevalidate == other.proxyRevalidate &&
          public == other.public &&
          sMaxage == other.sMaxage &&
          staleIfError == other.staleIfError &&
          staleWhileRevalidate == other.staleWhileRevalidate; } 
@override int get hashCode { return Object.hash(immutable, maxAge, mustRevalidate, mustUnderstand, noCache, noStore, noTransform, private, proxyRevalidate, public, sMaxage, staleIfError, staleWhileRevalidate); } 
@override String toString() { return 'RulesetsSetCacheControlRuleActionParameters(immutable: $immutable, maxAge: $maxAge, mustRevalidate: $mustRevalidate, mustUnderstand: $mustUnderstand, noCache: $noCache, noStore: $noStore, noTransform: $noTransform, private: $private, proxyRevalidate: $proxyRevalidate, public: $public, sMaxage: $sMaxage, staleIfError: $staleIfError, staleWhileRevalidate: $staleWhileRevalidate)'; } 
 }
