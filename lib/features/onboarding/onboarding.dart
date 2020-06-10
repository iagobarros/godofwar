import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel/features/landing_tab/landing_tab.dart';
import 'package:marvel/features/onboarding/onboarding_page_child.dart';

class OnboardingPage extends StatelessWidget {
  final PageController controller = PageController();
  List<Widget> dataSource = [];

  OnboardingPage() {
    dataSource = [
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War",
              secondaryTitle: "",
              imageName: "resources/images/gow1.jpeg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-6959");
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War 2",
              secondaryTitle: "",
              imageName: "resources/images/gow2.jpg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-11314");
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War 3",
              secondaryTitle: "",
              imageName: "resources/images/gow3.jpg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-20461");
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War: Chains of Olympus",
              secondaryTitle: "",
              imageName: "resources/images/gowChains.jpg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-20592");
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War: Ghost of Sparta",
              secondaryTitle: "",
              imageName: "resources/images/gowGhost.jpg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-31180");
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War: Ascension",
              secondaryTitle: "",
              imageName: "resources/images/gowAscension.jpg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-38043");
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "God of War (2018)",
              secondaryTitle: "",
              imageName: "resources/images/gow2018.jpg",
              shouldPresentButton: true,
              buttonTitle: "Spartan Rage !!!",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, guid: "3030-54229");
              })),
    ];
  }

  _presentPokemonListPage({BuildContext context, String guid}) {
    Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => LandingTabPage()));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: PageView(
      key: Key("onboarding_page_view"),
      children: dataSource,
    ));
  }
}
