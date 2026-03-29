// GENERATED CODE - DO NOT MODIFY BY HAND

/// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
extension type const FirewallSchemasPriority(double value) {
factory FirewallSchemasPriority.fromJson(num json) => FirewallSchemasPriority(json.toDouble());

num toJson() => value;

}
