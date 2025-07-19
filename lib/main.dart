import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/routes/app_router.dart';

void main() => runApp(const ProviderScope(child: Elections()));

class Elections extends ConsumerWidget {
  const Elections({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'UMT Elections',
      routerConfig: router,
    );
  }
}
