import 'package:flutter/material.dart';
import 'package:portfolio/ui/views/home/desktop_view/home_page.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const HomePage();
  }
}
