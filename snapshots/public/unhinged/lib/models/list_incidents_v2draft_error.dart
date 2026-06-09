// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'error_model.dart';

/// Error responses of `GET /incidents`.
sealed class ListIncidentsV2draftError {
  const ListIncidentsV2draftError();

  /// Parse the variant matching the response status code.
  factory ListIncidentsV2draftError.parse(ApiResponse response) {
    return switch (response.statusCode) {
      666 => ListIncidentsV2draftError666.parse(response),
      _ => ListIncidentsV2draftErrorDefault.parse(response),
    };
  }
}

/// The `666` response.
@immutable
final class ListIncidentsV2draftError666 extends ListIncidentsV2draftError {
  const ListIncidentsV2draftError666();

  factory ListIncidentsV2draftError666.parse(ApiResponse _) {
    return const ListIncidentsV2draftError666();
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is ListIncidentsV2draftError666;
  }

  @override
  int get hashCode {
    return (ListIncidentsV2draftError666).hashCode;
  }

  @override
  String toString() {
    return 'ListIncidentsV2draftError666()';
  }
}

/// The `default` response.
@immutable
final class ListIncidentsV2draftErrorDefault extends ListIncidentsV2draftError {
  const ListIncidentsV2draftErrorDefault(this.data);

  factory ListIncidentsV2draftErrorDefault.parse(ApiResponse response) {
    return ListIncidentsV2draftErrorDefault(
      ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>),
    );
  }

  final ErrorModel data;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ListIncidentsV2draftErrorDefault && data == other.data;
  }

  @override
  int get hashCode {
    return data.hashCode;
  }

  @override
  String toString() {
    return 'ListIncidentsV2draftErrorDefault($data)';
  }
}
