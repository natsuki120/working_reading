import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/domain/sentence/sentence.dart';
import 'package:working_reading/domain/sentence_list/sentence_list.dart';
import '../../repository/sentence_repository/sentence_repository_with_supabase.dart';

class SentenceListNotifier extends StateNotifier<SentenceList> {
  SentenceListNotifier({required this.sentenceRepository})
      : super(const SentenceList());

  final ISentenceRepository sentenceRepository;

  Future<void> fetchRandomSentenceToUseQuestion() async {
    final result = await sentenceRepository.fetchRandomSentenceToUseQuestion();
    state = state.copyWith(sentenceList: result);
  }

  void changeSentenceToCollected({required String noun}) {
    // // 該当する問題を取得
    // Sentence applicableSentence = sentenceList
    //     .firstWhere((element) => element.properNoun == sentence.properNoun);
    // // 新しいクラスを作って
    // Sentence collectedSentence = Sentence(
    //   text: applicableSentence.text,
    //   properNoun: applicableSentence.properNoun,
    //   hasCollected: true,
    // );
    // // 交換する
    // sentenceList.insert(sentenceList.indexOf(sentence), collectedSentence);

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
