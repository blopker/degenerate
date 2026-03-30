// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAccountSettings {const WorkersAccountSettings({this.defaultUsageModel, this.greenCompute, });

factory WorkersAccountSettings.fromJson(Map<String, dynamic> json) { return WorkersAccountSettings(
  defaultUsageModel: json['default_usage_model'] as String?,
  greenCompute: json['green_compute'] as bool?,
); }

final String? defaultUsageModel;

final bool? greenCompute;

Map<String, dynamic> toJson() { return {
  'default_usage_model': ?defaultUsageModel,
  'green_compute': ?greenCompute,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_usage_model', 'green_compute'}.contains(key)); } 
WorkersAccountSettings copyWith({String Function()? defaultUsageModel, bool Function()? greenCompute, }) { return WorkersAccountSettings(
  defaultUsageModel: defaultUsageModel != null ? defaultUsageModel() : this.defaultUsageModel,
  greenCompute: greenCompute != null ? greenCompute() : this.greenCompute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAccountSettings &&
          defaultUsageModel == other.defaultUsageModel &&
          greenCompute == other.greenCompute; } 
@override int get hashCode { return Object.hash(defaultUsageModel, greenCompute); } 
@override String toString() { return 'WorkersAccountSettings(defaultUsageModel: $defaultUsageModel, greenCompute: $greenCompute)'; } 
 }
