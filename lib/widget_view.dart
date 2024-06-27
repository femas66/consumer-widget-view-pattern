import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class StatefullConsumerWidgetView<W extends ConsumerStatefulWidget,
    S extends ConsumerState> extends StatelessWidget {
  @protected
  final S controller;

  @protected
  W get widget => controller.widget as W;
  const StatefullConsumerWidgetView(this.controller, {super.key});
}

abstract class StatefulWidgetView<W extends StatefulWidget, S extends State>
    extends StatelessWidget {
  @protected
  final S controller;
  @protected
  W get widget => controller.widget as W;
  const StatefulWidgetView(
    this.controller, {
    super.key,
  });
}

/// A widget view of a [StatelessWidget] as a stateless controller.
// ignore: prefer-single-widget-per-file
abstract class StatelessWidgetView<W extends StatelessWidget>
    extends StatelessWidget {
  @protected
  final W controller;
  const StatelessWidgetView(
    this.controller, {
    super.key,
  });
}
