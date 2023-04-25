import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:working_reading/domain/famous_saying/famous_saying.dart';
import 'dart:math' as math;
import '../../../domain/sentence/sentence.dart';

class TopRepositoryWithSupabase {
  final supabase = Supabase.instance.client;

  Future<FamousSaying> fetchRandomFamousSaying() async {
    final random = math.Random().nextInt(9);
    final data =
        await supabase.from('famouse saying').select('*').eq('id', random);
    return FamousSaying.fromJson(data[0]);
  }

  Future<List<Sentence>> fetchRandomSentenceToUseQuestion(
      {required int num}) async {
    final Set textIds = {};
    final response = <List<dynamic>>[];
    while (response.length < num) {
      final random = math.Random().nextInt(9);
      final data =
          await supabase.from('sentence').select('*').eq('text_id', random);
      final textId = data[0]['text_id'];
      if (!textIds.contains(textId)) {
        response.add(data);
        textIds.add(textId);
      }
    }
    return response
        .map((data) => Sentence.fromJson(data[0]))
        .toList(); // リストの要素を変換してから返す
  }
}
