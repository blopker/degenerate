// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class TextEmbeddings2 {const TextEmbeddings2({this.data, this.shape, });

factory TextEmbeddings2.fromJson(Map<String, dynamic> json) { return TextEmbeddings2(
  data: (json['data'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => (e as num).toDouble()).toList()).toList(),
  shape: (json['shape'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
); }

/// Embeddings of the requested text values
final List<List<double>>? data;

final List<double>? shape;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.map((e) => e).toList(),
  'shape': ?shape,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'shape'}.contains(key)); } 
TextEmbeddings2 copyWith({List<List<double>> Function()? data, List<double> Function()? shape, }) { return TextEmbeddings2(
  data: data != null ? data() : this.data,
  shape: shape != null ? shape() : this.shape,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TextEmbeddings2 &&
          listEquals(data, other.data) &&
          listEquals(shape, other.shape); } 
@override int get hashCode { return Object.hash(Object.hashAll(data ?? const []), Object.hashAll(shape ?? const [])); } 
@override String toString() { return 'TextEmbeddings2(data: $data, shape: $shape)'; } 
 }
