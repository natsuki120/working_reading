import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/repository/sentence_repository/sentence_repository_with_supabase.dart';

final sentenceRepositoryProvider =
    Provider((ref) => SentenceRepositoryWithSupabase());

final fetchRandomSentenceToUseQuestionProvider =
    FutureProvider.family((ref, int num) async {
  return await SentenceRepositoryWithSupabase()
      .fetchRandomSentenceToUseQuestion(num: num);
});
