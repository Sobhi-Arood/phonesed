import 'dart:io';
import 'dart:ui';

const kPrimaryColor = Color(0xFF509BFE);
const kPrimaryDarkColor = Color(0xFF393939);
const kPrimaryLightColor = Color(0xFFF4F5F6);
const kSecondaryLightColor = Color(0xFFCDCDCD);

const kSortPriceChooses = ['Default', 'Highest to Lowest', 'Lowest to Highest'];
const kFilterCities = [
  'All cities',
  'Abu dhabi',
  'Dubai',
  'Sharjah',
  'Ajman',
  'Al Ain',
  'Fujairah',
  'Ras Al-Khaimah',
  'Umm Al Quwain'
];
const kFilterPrices = [
  'All',
  'Under 500',
  '500 - 1000',
  '1000 - 2000',
  '2000 - 3000',
  '3000 - 4000',
  '4000 & more'
];
const kFilterBrands = [
  'All',
  'Apple',
  'Samsung',
  'Huawei',
  'Google',
];

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544/2934735716';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544/6300978111';
  }
  return null;
}

String getInterstitialAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544/4411468910';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544/1033173712';
  }
  return null;
}

String getRewardBasedVideoAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544/1712485313';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544/5224354917';
  }
  return null;
}
