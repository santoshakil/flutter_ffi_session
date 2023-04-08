import 'package:flutter/material.dart';

import 'cases.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key = const Key('HomeView')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: const Key('HomeViewAppBar'),
        title: const Text('FFI'),
      ),
      body: ListView.separated(
        itemCount: Cases.values.length,
        padding: const EdgeInsets.all(8),
        key: const Key('HomeViewListView'),
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (_, i) {
          final v = Cases.values[i];
          return _Tile(v, key: ValueKey(v));
        },
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.v, {super.key});

  final Cases v;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(v.title),
      subtitle: Text(v.description),
      onTap: () async {
        if (v.widget == null) return;
        await Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => v.widget!),
        );
      },
    );
  }
}
