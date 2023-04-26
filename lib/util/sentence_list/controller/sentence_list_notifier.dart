import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/util/sentence/sentence.dart';
import 'package:working_reading/util/sentence_list/domain/sentence_list.dart';
import 'package:working_reading/util/sentence_list/repository/repository.dart';

class UtilSentenceListNotifier extends StateNotifier<UtilSentenceList> {
  UtilSentenceListNotifier({required this.sentenceRepository})
      : super(const UtilSentenceList());

  final IUtilSentenceRepository sentenceRepository;

  Future<void> fetchRandomSentenceToUseQuestion({required int num}) async {
    final result =
        await sentenceRepository.fetchRandomSentenceToUseQuestion(num: num);
    state = state.copyWith(sentenceList: result);
  }

  void changeSentenceToCollected({required String noun}) {
    List<UtilSentence> testList = state.sentenceList.map<UtilSentence>((e) {
      if (e.properNoun == noun) {
        e = e.copyWith(hasCollected: true);
      }
      return e;
    }).toList();

    state = state.copyWith(sentenceList: testList);
  }

  void displayAllAnswer() {
    List<UtilSentence> list =
        state.sentenceList.map<UtilSentence>((UtilSentence sentence) {
      if (!sentence.hasCollected) {
        sentence = sentence.copyWith(giveUp: true);
      }
      return sentence;
    }).toList();
    state = state.copyWith(sentenceList: list);
  }
}

final utilSentenceListNotifier =
    StateNotifierProvider<UtilSentenceListNotifier, UtilSentenceList>(
  (ref) => UtilSentenceListNotifier(
    sentenceRepository: UtilSentenceListRepositoryWithSupabase(),
  ),
);
