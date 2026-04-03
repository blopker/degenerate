// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the desired compression algorithm and format.
@immutable final class AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType {const AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType._(this.value);

factory AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType.fromJson(String json) { return switch (json) {
  'none' => none,
  'gzip' => gzip,
  'deflate' => deflate,
  _ => AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType._(json),
}; }

static const AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType none = AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType._('none');

static const AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType gzip = AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType._('gzip');

static const AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType deflate = AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType._('deflate');

static const List<AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType> values = [none, gzip, deflate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType($value)'; } 
 }
@immutable final class AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression {const AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression({this.type = AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType.gzip});

factory AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression(
  type: json.containsKey('type') ? AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType.fromJson(json['type'] as String) : AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType.gzip,
); }

/// Specifies the desired compression algorithm and format.
final AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type'}.contains(key)); } 
AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression copyWith({AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompressionType Function()? type}) { return AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedRequestDestinationCompression(type: $type)'; } 
 }
