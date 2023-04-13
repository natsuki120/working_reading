import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/domain/sentence/sentence.dart';
import 'package:working_reading/domain/sentence_list/sentence_list.dart';
import '../../repository/sentence_repository/sentence_repository_with_supabase.dart';

class SentenceListNotifier extends StateNotifier<SentenceList> {
  SentenceListNotifier({required this.sentenceRepository})
      : super(const SentenceList());

  final ISentenceRepository sentenceRepository;

  Future<void> fetchRandomSentenceToUseQuestion({required int num}) async {
    final result =
        await sentenceRepository.fetchRandomSentenceToUseQuestion(num: num);
    state = state.copyWith(sentenceList: result);
  }

  void changeSentenceToCollected({required String noun}) {
    List<Sentence> testList = state.sentenceList.map<Sentence>((e) {
      if (e.properNoun == noun) {
        e = e.copyWith(hasCollected: true);
      }
      return e;
    }).toList();

    state = state.copyWith(sentenceList: testList);
  }
}

final sentenceListNotifierProvider =
    StateNotifierProvider<SentenceListNotifier, SentenceList>((ref) =>
        SentenceListNotifier(
            sentenceRepository: SentenceRepositoryWithSupabase()));
