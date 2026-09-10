// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_serve_error_asset_name.dart';@immutable final class ActionParametersAsset2 {const ActionParametersAsset2({required this.assetName});

factory ActionParametersAsset2.fromJson(Map<String, dynamic> json) {return ActionParametersAsset2(
  assetName: RulesetsServeErrorAssetName.fromJson(json['asset_name'] as String),
);}

/// The name of a custom asset to serve as the error response.
final RulesetsServeErrorAssetName assetName;

Map<String, dynamic> toJson() {return {
  'asset_name': assetName.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('asset_name');}
ActionParametersAsset2 copyWith({RulesetsServeErrorAssetName? assetName}) {return ActionParametersAsset2(
  assetName: assetName ?? this.assetName,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ActionParametersAsset2 &&
          assetName == other.assetName;}
@override int get hashCode {return assetName.hashCode;}
@override String toString() {return 'ActionParametersAsset2(assetName: $assetName)';}
}
