# SP Mixin Guide

## Yapı
- Her mixin `SharedPreferences get prefs;` getter'ı implemente eder
- Her mixin kendi key'lerini `static const String _key...` olarak saklar
- Her mixin kendi `clear...()` metodunu expose eder

## Mevcut Mixin'ler

| Mixin | Keys | Clear Metodu |
|-------|------|--------------|
| SpLocationMixin | `user_location_latitude`, `user_location_longitude` | `clearUserLocation()` |
| SpCityMixin | `city_config`, `country_name` | `clearCityInfo()` |
| SpFavoritesMixin | `favorite_event_subcategories` | `clearFavoriteEvents()` |
| SpNotificationsMixin | `dismissed_notifications` | `clearDismissedNotifications()` |

## Yeni Mixin Ekleme
```dart
mixin SpXxxMixin {
  SharedPreferences get prefs;

  static const String _keyXxx = 'xxx_key';

  // CRUD metodları...

  Future<void> clearXxx() async {
    await prefs.remove(_keyXxx);
  }
}
```

Ana service'e ekle:
1. Import
2. `with SpXxxMixin` ekle
3. `clearAllUserData()` içine `clearXxx()` ekle
