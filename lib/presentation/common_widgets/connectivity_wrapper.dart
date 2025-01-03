import 'package:book_app/presentation/common_widgets/no_internet_view.dart';
import 'package:book_app/presentation/global_singletons/global_singletons.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityWrapper extends ConsumerStatefulWidget {
  final Widget child;

  const ConnectivityWrapper({super.key, required this.child});

  @override
  ConsumerState createState() => _ConnectivityWrapperState();
}

class _ConnectivityWrapperState extends ConsumerState<ConnectivityWrapper> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<ConnectivityResult>> connectivityState =
        ref.watch(connectivityStreamProvider);
    debugPrint(
        "connectivity changed ${connectivityState.asData?.value.contains(ConnectivityResult.none)}");
    return switch (connectivityState) {
      AsyncValue(:final error?) => const Material(child: NoInternetView()),
      AsyncValue(:final valueOrNull?) => Material(
          child: Builder(builder: (context) {
            if (connectivityState.asData != null &&
                connectivityState.asData!.value
                        .contains(ConnectivityResult.none) ==
                    false) {
              return widget.child;
            } else {
              return const NoInternetView();
            }
          }),
        ),
      _ => const Material(child: CircularProgressIndicator()),
    };
  }
}
