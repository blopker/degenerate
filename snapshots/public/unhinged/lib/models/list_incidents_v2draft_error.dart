// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';

import 'package:degenerate_runtime/degenerate_runtime.dart';

import 'error_model.dart';

/// Error response variants. Match the concrete type to access its payload.
sealed class ListIncidentsV2draftError {
  const ListIncidentsV2draftError();

  /// Decodes the payload for its declared status and content type.
  static ListIncidentsV2draftError parse(ApiResponse response) {
    switch (response.statusCode) {
      case 666:
        return const ListIncidentsV2draftError666();
      default:
        final json = jsonDecode(response.body);
        return ListIncidentsV2draftErrorDefault(
          ErrorModel.fromJson(json as Map<String, dynamic>),
        );
    }
  }
}

/// Response for 666.
final class ListIncidentsV2draftError666 extends ListIncidentsV2draftError {
  const ListIncidentsV2draftError666();
}

/// Response for Default (application/json).
final class ListIncidentsV2draftErrorDefault extends ListIncidentsV2draftError {
  const ListIncidentsV2draftErrorDefault(this.data);

  /// The decoded response payload.
  final ErrorModel data;
}
