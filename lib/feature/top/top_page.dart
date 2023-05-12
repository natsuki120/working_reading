import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/feature/top/component/buttons_area.dart';
import 'package:working_reading/feature/top/component/famous_saying_area.dart';
import 'package:working_reading/feature/top/component/select_n_back_area.dart';
import 'package:working_reading/feature/top/component/title_and_logo_area.dart';
import 'package:working_reading/feature/top/provider/provider.dart';
import 'package:working_reading/util/result/controller/controller.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../component/provider.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final famousSaying = ref.watch(fetchFamousSaying);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(hasTappedButton.notifier).state = false;
      });
      return;
    }, [ref.watch(utilSentenceListNotifier)]);

    useEffect(() {
      ref.watch(updateForceProvider(context));
      ref.watch(utilResultListController.notifier).state.clear();
      return;
    }, []);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(backgroundColor: backgroundColor),
      body: famousSaying.when(
          data: (famousSaying) => SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TitleAndLogoArea(),
                      SizedBox(height: 48.h),
                      FamousSayingArea(famousSaying: famousSaying),
                      SizedBox(height: 48.h),
                      SelectNBackArea(),
                      const Spacer(),
                      ButtonsArea(),
                    ],
                  ),
                ),
              ),
          error: (err, stack) => Text(err.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
