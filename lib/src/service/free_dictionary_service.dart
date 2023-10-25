import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:free_english_dictionary/src/entities/entities.dart';

class FreeDictionaryService {
  static final Dio _dio = Dio(
    BaseOptions(
        baseUrl: 'https://api.dictionaryapi.dev',
        contentType: 'application/json',
        validateStatus: (status) {
          return status! < 510;
        }),
  );
  final _cacheOption = CacheOptions(store: MemCacheStore());

  static FreeDictionaryService? _instance;

  FreeDictionaryService._() {
    _dio.interceptors.add(DioCacheInterceptor(options: _cacheOption));
  }

  factory FreeDictionaryService() {
    _instance ??= FreeDictionaryService._();
    return _instance!;
  }

  static Future<List<WordMeaning>> getWordMeaning(String word) async {
    final meaningList = <WordMeaning>[];
    if (word.isEmpty) {
      return meaningList;
    }
    try {
      final response = await _dio.get("/api/v2/entries/en/$word");
      if (response.statusCode == HttpStatus.ok) {
        for (final meaning in response.data) {
          meaningList.add(WordMeaning.fromJson(meaning));
        }
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      rethrow;
    }

    return meaningList;
  }
}
