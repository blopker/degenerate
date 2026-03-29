// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class MultimodalEmbeddings2 {const MultimodalEmbeddings2({this.data, this.shape, });

factory MultimodalEmbeddings2.fromJson(Map<String, dynamic> json) { return MultimodalEmbeddings2(
  data: (json['data'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => (e as num).toDouble()).toList()).toList(),
  shape: (json['shape'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
); }

final List<List<double>>? data;

final List<double>? shape;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.map((e) => e).toList(),
  'shape': ?shape,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MultimodalEmbeddings2 copyWith({List<List<double>> Function()? data, List<double> Function()? shape, }) { return MultimodalEmbeddings2(
  data: data != null ? data() : this.data,
  shape: shape != null ? shape() : this.shape,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MultimodalEmbeddings2 &&
          listEquals(data, other.data) &&
          listEquals(shape, other.shape); } 
@override int get hashCode { return Object.hash(Object.hashAll(data ?? const []), Object.hashAll(shape ?? const [])); } 
@override String toString() { return 'MultimodalEmbeddings2(data: $data, shape: $shape)'; } 
 }
