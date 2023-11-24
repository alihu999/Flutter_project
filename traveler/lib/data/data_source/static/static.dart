import 'package:get/get.dart';
import 'package:traveler/core/constant/image_assets.dart';
import 'package:traveler/data/model/home_page_image_model.dart';
import 'package:traveler/data/model/onboarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      urlImage: ImageAssets.ourMission,
      title: "Our Mission".tr,
      body: "onBoardingOne".tr),
  OnBoardingModel(
      urlImage: ImageAssets.ourVision,
      title: "Our Vision".tr,
      body: "onBoradingTow".tr),
  OnBoardingModel(
      urlImage: ImageAssets.ourGoals,
      title: "Our Goals".tr,
      body: "onBoardingThree".tr)
];
List<HomeImage> placeList = [
  HomeImage(
      imageUrl: ImageAssets.damascus,
      title: "Damascus",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=33.513710, 36.276625&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.alswida,
      title: "As Suwayda",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=32.712729, 36.566018&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.daraa,
      title: "Daraa",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=32.635659, 36.107259&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.homs,
      title: "Homs",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=34.732338, 36.713631&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.hama,
      title: "hamah",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=35.135067, 36.757360&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.latakia,
      title: "Latakia",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=35.527035, 35.788579&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.tartus,
      title: "Tartus",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=34.891432, 35.888328&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.aleppo,
      title: "Aleppo",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=36.210008, 37.152014&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.alraqqa,
      title: "Ar Raqqah",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=35.952061, 39.005409&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.deirElzour,
      title: "Deir ez-Zawr",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=35.334555, 40.130078&aqi=no"),
  HomeImage(
      imageUrl: ImageAssets.idlib,
      title: "Idlib",
      weatherUrl:
          "https://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=35.931137, 36.634367&aqi=no"),
];
