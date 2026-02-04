# 🏗️ Proje Mimarisi

## Genel Bakış

Bu projede **MVVM (Model-View-ViewModel)** mimarisi kullanılmaktadır. View kısmında butonların fonksiyonları ve sayfanın state'i ViewModel içinde tutulur. UI sadece UI'a bakar, bu sayede kod çok daha temiz ve okunabilir olur.

### 📄 Modüler Dokümantasyon Sistemi

Uygulama içindeki her modül ve özellik, kendine özgü bir `.md` dosyası barındırır. Bu dosyalar şunları içerir:

- Özelliğe ait detaylı bilgiler
- Sayfa yolları ve navigasyon yapısı
- Güncelleme geçmişi

Bu yaklaşım sayesinde AI araçlarıyla (özellikle Claude Opus) çalışırken minimum token harcayarak maksimum verim alınır. AI, nerede neyi nasıl düzelteceğini kolayca anlayabilir ve doğru yönlendirmeler yapabilir.

## Veri Akışı

```
UI → BLoC → Service → BLoC → UI
```

ViewModel tarafında service bağlantısı çok sınırlı tutulmuştur. Tüm servisler **Service Locator** ile tek bir yerde toplanmış durumdadır.

## Dosya Yapısı

```
lib/
├── future/
│   │
│   ├── login_process/
│   │   ├── login/
│   │   │   ├── auth_state/
│   │   │   ├── email_verification/
│   │   │   ├── magic_link/
│   │   │   ├── password/
│   │   │   ├── signin/
│   │   │   ├── signup/
│   │   │   ├── welcome/
│   │   │   └── 📄 login.md
│   │   ├── onboarding/
│   │   │   ├── cubit/
│   │   │   ├── steps/
│   │   │   ├── 📄 onboarding.md
│   │   │   ├── onboarding_view.dart
│   │   │   └── onboarding_view_model.dart
│   │   └── splash/
│   │       ├── splash_view.dart
│   │       └── 📄 splash.md
│   │
│   └── views/
│       ├── home/
│       ├── map/
│       ├── notification/
│       └── profile/
│       
│
├── product/
│   │
│   ├── constant/
│   ├── enum/
│   ├── extension/
│   ├── init/
│   ├── navigation/
│   ├── service/
│   ├── theme/
│   └── widget/
│
├── main.dart
│
└── module/
    ├── gen/
    │   ├── assets/
    │   ├── lib/
    │   ├── test/
    │   ├── pubspec.yaml
    │   └── ...
    └── widgets/
        ├── lib/
        ├── test/
        ├── pubspec.yaml
        └── ...
```

## Katman Açıklamaları

| Katman | Dosya | Sorumluluk |
|--------|-------|------------|
| **View** | `*_view.dart` | Sadece UI bileşenleri |
| **ViewModel** | `*_view_model.dart` | State yönetimi + buton fonksiyonları |
| **Service** | `base/service/` | Dış kaynaklar (API, Firebase vb.) |
| **Widget** | `base/widget/` | Yeniden kullanılabilir UI parçaları |
| **Model** | `model/` | Veri modelleri |

## Klasör Açıklamaları

### `future/`
Uygulamanın ana özelliklerini içerir:
- **login_process/** - Giriş akışı (login, onboarding, splash)
- **views/** - Ana ekranlar (home, map, notification, profile, product)

### `base/`
Uygulamanın temel yapı taşları:
- **constant/** - Sabit değerler
- **enum/** - Enum tanımlamaları
- **extension/** - Dart extension'ları
- **init/** - Başlangıç konfigürasyonları
- **navigation/** - Sayfa yönlendirmeleri
- **service/** - Servis katmanı
- **theme/** - Tema ayarları
- **widget/** - Ortak widget'lar

## Mimari Özellikleri

- ✅ **Modüler yapı** - Her özellik kendi klasöründe
- ✅ **Sade kod** - Sorumluluklar net ayrılmış
- ✅ **Yönetilebilir** - Kolay bakım ve geliştirme
- ✅ **Test edilebilir** - Katmanlar bağımsız test edilebilir






