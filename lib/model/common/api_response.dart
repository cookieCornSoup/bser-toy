
import 'package:json_annotation/json_annotation.dart';


part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {

  const ApiResponse({required this.code, required this.message});

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

  final String code;
  final String message;

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
