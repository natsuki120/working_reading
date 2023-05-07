import 'package:hooks_riverpod/hooks_riverpod.dart';

final hasTappedButton = StateProvider.autoDispose((ref) => false);

// レビューダイアログを出す時に使うprovider
// この値が3になったらダイアログを出す。
final reviewTimingCountProvider = StateProvider((ref) => 1);
