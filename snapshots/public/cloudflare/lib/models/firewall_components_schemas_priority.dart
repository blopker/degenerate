// GENERATED CODE - DO NOT MODIFY BY HAND

/// The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
extension type const FirewallComponentsSchemasPriority(double value) {
factory FirewallComponentsSchemasPriority.fromJson(num json) => FirewallComponentsSchemasPriority(json.toDouble());

num toJson() => value;

}
