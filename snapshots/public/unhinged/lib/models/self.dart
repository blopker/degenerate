// GENERATED CODE - DO NOT MODIFY BY HAND

import 'proto.dart';
import 'string_model.dart';
import 'true.dart';

sealed class Self {
  const Self();

  /// Deserialize from JSON, dispatching on the `type` discriminator.
  factory Self.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'True' => SelfTrue.fromJson(json),
      'Proto' => SelfProto.fromJson(json),
      'StringModel' => SelfStringModel.fromJson(json),
      _ => Self$Unknown(json),
    };
  }

  /// The discriminator value identifying this variant.
  String get type;
  Map<String, dynamic> toJson();

  /// Whether this variant is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return this is Self$Unknown;
  }
}

final class SelfTrue extends Self {
  const SelfTrue(this.$true);

  factory SelfTrue.fromJson(Map<String, dynamic> json) {
    return SelfTrue(True.fromJson(json));
  }

  final True $true;

  @override
  String get type {
    return 'True';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...$true.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is SelfTrue && $true == other.$true;
  }

  @override
  int get hashCode {
    return $true.hashCode;
  }

  @override
  String toString() {
    return 'SelfTrue(\$true: ${$true})';
  }
}

final class SelfProto extends Self {
  const SelfProto(this.proto);

  factory SelfProto.fromJson(Map<String, dynamic> json) {
    return SelfProto(Proto.fromJson(json));
  }

  final Proto proto;

  @override
  String get type {
    return 'Proto';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...proto.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is SelfProto && proto == other.proto;
  }

  @override
  int get hashCode {
    return proto.hashCode;
  }

  @override
  String toString() {
    return 'SelfProto(proto: $proto)';
  }
}

final class SelfStringModel extends Self {
  const SelfStringModel(this.stringModel);

  factory SelfStringModel.fromJson(Map<String, dynamic> json) {
    return SelfStringModel(StringModel.fromJson(json));
  }

  final StringModel stringModel;

  @override
  String get type {
    return 'StringModel';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...stringModel.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SelfStringModel && stringModel == other.stringModel;
  }

  @override
  int get hashCode {
    return stringModel.hashCode;
  }

  @override
  String toString() {
    return 'SelfStringModel(stringModel: $stringModel)';
  }
}

/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class Self$Unknown extends Self {
  const Self$Unknown(this.json);

  final Map<String, dynamic> json;

  @override
  String get type {
    return json['type'] as String? ?? '';
  }

  @override
  Map<String, dynamic> toJson() {
    return json;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Self$Unknown && json == other.json;
  }

  @override
  int get hashCode {
    return json.hashCode;
  }

  @override
  String toString() {
    return 'Self.unknown($json)';
  }
}
