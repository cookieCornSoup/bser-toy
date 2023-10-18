import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../model/common/api_response.dart';

part 'bser_client.g.dart';

@RestApi(baseUrl: "https://open-api.bser.io")
abstract class BserClient {
  factory BserClient(Dio dio, {String baseUrl}) = _BserClient;

  /// data ********************

  // Fetch game data by metaType
  @GET("/v1/data/{metaType}")
  Future<ApiResponse> fetchMetaType(@Path('metaType') String metaType);

  // Fetch freeCharacters by matchingMode
  @GET("/v1/freeCharacters/{matchingMode}")
  Future<ApiResponse> fetchFreeCharactersByMatchingMode(
      @Path('matchingMode') String matchingMode);

  // Fetch l10n data by language
  @GET("/v1/data/{language}")
  Future<ApiResponse> fetchLocalization(@Path('language') String language);

  // Fetch game data by metaType
  @GET("/v2/data/{metaType}")
  Future<ApiResponse> fetchMetaTypeVersion2(@Path('metaType') String metaType);

  /// games ********************

  // Fetch user games by gameId
  @GET("/v1/games/{gameId}")
  Future<ApiResponse> fetchGameId(@Path('gameId') String gameId);


}
