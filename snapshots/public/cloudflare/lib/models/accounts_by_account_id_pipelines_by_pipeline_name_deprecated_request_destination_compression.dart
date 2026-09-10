// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the desired compression algorithm and format.
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType._(this.value);

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType.fromJson(String json) {return switch (json) {
  'none' => none,
  'gzip' => gzip,
  'deflate' => deflate,
  _ => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType._(json),
};}

static const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType none = AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType._('none');

static const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType gzip = AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType._('gzip');

static const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType deflate = AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType._('deflate');

static const List<AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType> values = [none, gzip, deflate];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType($value)';}
}
@immutable final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression({this.type});

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression.fromJson(Map<String, dynamic> json) {return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression(
  type: json['type'] != null ? AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType.fromJson(json['type'] as String) : null,
);}

/// Specifies the desired compression algorithm and format.
final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType? type;

/// The value with the schema default applied when absent.
AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType get typeOrDefault {return type ?? AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType.fromJson('gzip');}
Map<String, dynamic> toJson() {return {
  if (type != null) 'type': type?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'type'}.contains(key));}
AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression copyWith({AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompressionType? Function()? type}) {return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression(
  type: type != null ? type() : this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression &&
          type == other.type;}
@override int get hashCode {return type.hashCode;}
@override String toString() {return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationCompression(type: $type)';}
}
