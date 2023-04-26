import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:working_reading/domain/sentence/sentence.dart';
import 'dart:math' as math;
import 'package:working_reading/feature/training/domain/training.dart';

class TrainingRepositoryWithSupabase extends ITrainingRepository {
  final supabase = Supabase.instance.client;

  @override
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
