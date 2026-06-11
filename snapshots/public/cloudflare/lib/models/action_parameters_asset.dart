// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The name of a custom asset to serve as the error response.
extension type const RulesetsServeErrorAssetName(String value) {
factory RulesetsServeErrorAssetName.fromJson(String json) => RulesetsServeErrorAssetName(json);

String toJson() => value;

}
@immutable final class ActionParametersAsset {const ActionParametersAsset({required this.assetName});

factory ActionParametersAsset.fromJson(Map<String, dynamic> json) { return ActionParametersAsset(
  assetName: RulesetsServeErrorAssetName.fromJson(json['asset_name'] as String),
); }

/// The name of a custom asset to serve as the error response.
final RulesetsServeErrorAssetName assetName;

Map<String, dynamic> toJson() { return {
  'asset_name': assetName.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asset_name'); } 
ActionParametersAsset copyWith({RulesetsServeErrorAssetName? assetName}) { return ActionParametersAsset(
  assetName: assetName ?? this.assetName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionParametersAsset &&
          assetName == other.assetName; } 
@override int get hashCode { return assetName.hashCode; } 
@override String toString() { return 'ActionParametersAsset(assetName: $assetName)'; } 
 }
