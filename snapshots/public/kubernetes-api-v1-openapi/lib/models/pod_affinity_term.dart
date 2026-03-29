// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'label_selector.dart';/// Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key `<topologyKey>` matches that of any node on which a pod of the set of pods is running
final class PodAffinityTerm {const PodAffinityTerm({this.labelSelector, this.matchLabelKeys, this.mismatchLabelKeys, this.namespaceSelector, this.namespaces, this.topologyKey = '', });

factory PodAffinityTerm.fromJson(Map<String, dynamic> json) { return PodAffinityTerm(
  labelSelector: json['labelSelector'] != null ? LabelSelector.fromJson(json['labelSelector'] as Map<String, dynamic>) : null,
  matchLabelKeys: (json['matchLabelKeys'] as List<dynamic>?)?.map((e) => e as String).toList(),
  mismatchLabelKeys: (json['mismatchLabelKeys'] as List<dynamic>?)?.map((e) => e as String).toList(),
  namespaceSelector: json['namespaceSelector'] != null ? LabelSelector.fromJson(json['namespaceSelector'] as Map<String, dynamic>) : null,
  namespaces: (json['namespaces'] as List<dynamic>?)?.map((e) => e as String).toList(),
  topologyKey: json['topologyKey'] as String,
); }

/// A label query over a set of resources, in this case pods. If it's null, this PodAffinityTerm matches with no Pods.
final LabelSelector? labelSelector;

/// MatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key in (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both matchLabelKeys and labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set.
final List<String>? matchLabelKeys;

/// MismatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key notin (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set.
final List<String>? mismatchLabelKeys;

/// A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces.
final LabelSelector? namespaceSelector;

/// namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace".
final List<String>? namespaces;

/// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
final String topologyKey;

Map<String, dynamic> toJson() { return {
  if (labelSelector != null) 'labelSelector': labelSelector?.toJson(),
  'matchLabelKeys': ?matchLabelKeys,
  'mismatchLabelKeys': ?mismatchLabelKeys,
  if (namespaceSelector != null) 'namespaceSelector': namespaceSelector?.toJson(),
  'namespaces': ?namespaces,
  'topologyKey': topologyKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('topologyKey') && json['topologyKey'] is String; } 
PodAffinityTerm copyWith({LabelSelector Function()? labelSelector, List<String> Function()? matchLabelKeys, List<String> Function()? mismatchLabelKeys, LabelSelector Function()? namespaceSelector, List<String> Function()? namespaces, String? topologyKey, }) { return PodAffinityTerm(
  labelSelector: labelSelector != null ? labelSelector() : this.labelSelector,
  matchLabelKeys: matchLabelKeys != null ? matchLabelKeys() : this.matchLabelKeys,
  mismatchLabelKeys: mismatchLabelKeys != null ? mismatchLabelKeys() : this.mismatchLabelKeys,
  namespaceSelector: namespaceSelector != null ? namespaceSelector() : this.namespaceSelector,
  namespaces: namespaces != null ? namespaces() : this.namespaces,
  topologyKey: topologyKey ?? this.topologyKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodAffinityTerm &&
          labelSelector == other.labelSelector &&
          listEquals(matchLabelKeys, other.matchLabelKeys) &&
          listEquals(mismatchLabelKeys, other.mismatchLabelKeys) &&
          namespaceSelector == other.namespaceSelector &&
          listEquals(namespaces, other.namespaces) &&
          topologyKey == other.topologyKey; } 
@override int get hashCode { return Object.hash(labelSelector, Object.hashAll(matchLabelKeys ?? const []), Object.hashAll(mismatchLabelKeys ?? const []), namespaceSelector, Object.hashAll(namespaces ?? const []), topologyKey); } 
@override String toString() { return 'PodAffinityTerm(labelSelector: $labelSelector, matchLabelKeys: $matchLabelKeys, mismatchLabelKeys: $mismatchLabelKeys, namespaceSelector: $namespaceSelector, namespaces: $namespaces, topologyKey: $topologyKey)'; } 
 }
