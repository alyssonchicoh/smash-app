'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "8619571665cb47656aba6396fc993933",
"index.html": "9437e314e855394b47e41d7718c23269",
"/": "9437e314e855394b47e41d7718c23269",
"main.dart.js": "fd8e6562c9e0dfcb0ab0a06957c79d2c",
"pubspec.lock": "393a2b68b66096bc3dc04cd534acd9a7",
"ios/Runner.xcworkspace/contents.xcworkspacedata": "944eaa608d997672ac0dfcbfb00da3a3",
"ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "117105d2f2ee718eb485a07574a219b6",
"ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings": "56b1e4b1f6b3b790f471044c301e69ea",
"ios/Runner/Runner-Bridging-Header.h": "e07862ac930ed4d8479185d52c6cc66d",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md": "e175e436acacf76c814d83532d0b662c",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json": "770f4f65e02ca2fc57f46f4f4148d15d",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png": "c0fa6a088a2d486e4d75a012096d611b",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png": "9595f5692fac4a15b50616d6549e9ed4",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png": "19898f3eea0783250a0e2a20dc147827",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png": "e2b9a9fb66c6f8165a179d370eb723c0",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png": "c785f8932297af4acd5f5ccb7630f01c",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png": "d86de75e9341c42432a12b3d58e364b8",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png": "128e30cc061e49f503f48c338a21380e",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json": "c3cdf9688b604d14f2e76a8287e16167",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png": "19898f3eea0783250a0e2a20dc147827",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png": "f8e7955550407d4ec71d28e7c2d8c8c6",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png": "a34a631e106b9e7251e55fa199d34bca",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png": "7af6f2ed506e771a319d46846dde1f26",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png": "27c7e24d5bfb4f14a7978883bebfaf73",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png": "975d8a8c44f5d28ac65263294b84b0c5",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png": "27c7e24d5bfb4f14a7978883bebfaf73",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png": "2adf6396c0f80a2ddc96ead2f2405220",
"ios/Runner/Base.lproj/LaunchScreen.storyboard": "89e8363b3b781ee4977c3c9422b88a37",
"ios/Runner/Base.lproj/Main.storyboard": "0e0faca0bc5766e8640496223a31706a",
"ios/Runner/AppDelegate.swift": "640effd31ad5be56ac222976d95a5878",
"ios/Runner/Info.plist": "3c8e532af9b6b13f42d5e2fc61e63f81",
"ios/Runner.xcodeproj/project.pbxproj": "9964eaf95855eda56fa24d35a9b461af",
"ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata": "a54b6450d65c401d48911394f6a65bd2",
"ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "117105d2f2ee718eb485a07574a219b6",
"ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings": "56b1e4b1f6b3b790f471044c301e69ea",
"ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme": "4c619b382ab54d778dbc522ef4b1c6e5",
"ios/Flutter/Debug.xcconfig": "46d49915c32600030d79cd085ab92cf9",
"ios/Flutter/Release.xcconfig": "b60ff1c5444e52fc259cf0169dfbe87d",
"ios/Flutter/AppFrameworkInfo.plist": "1beb17747ea5d0af65d1b821f5aae959",
"ios/Podfile": "5a0dce230f13631d91e230380f0580f6",
"ios/Podfile.lock": "f95e428aaa312b4baf555d33f1098086",
"README.md": "cf0cf2524d8236a7767753796a6fe6cb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"pubspec.yaml": "270a111f53ae7a6b5c13d60b95f0b3ce",
"android/app/build.gradle": "e29f9275df41005f55b36cf1714aa52e",
"android/app/src/profile/AndroidManifest.xml": "046fc0b1479816964d367c6ce0462686",
"android/app/src/main/res/mipmap-mdpi/ic_launcher.png": "6270344430679711b81476e29878caa7",
"android/app/src/main/res/mipmap-hdpi/ic_launcher.png": "13e9c72ec37fac220397aa819fa1ef2d",
"android/app/src/main/res/drawable/launch_background.xml": "79c59c987bd2e693cd741ec3035ef383",
"android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png": "57838d52c318faff743130c3fcfae0c6",
"android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png": "afe1b655b9f32da22f9a4301bb8e6ba8",
"android/app/src/main/res/values-night/styles.xml": "9a0d0c025baa6413fb7925a1fc0e7d91",
"android/app/src/main/res/values/styles.xml": "0bb9efe0fe32b3c7256a360ca418377d",
"android/app/src/main/res/drawable-v21/launch_background.xml": "ab00f2bfdce1a5187d1ba31e9e68b921",
"android/app/src/main/res/mipmap-xhdpi/ic_launcher.png": "a0a8db5985280b3679d99a820ae2db79",
"android/app/src/main/AndroidManifest.xml": "c88c1a5f6f0f793cc3e05802d8718736",
"android/app/src/main/kotlin/br/com/ifce/smash/MainActivity.kt": "f9335f1dd9512bfd10dbd0febda53d0e",
"android/app/src/debug/AndroidManifest.xml": "046fc0b1479816964d367c6ce0462686",
"android/gradle/wrapper/gradle-wrapper.properties": "4a3ac42d3bba3464a5c2ed6ccb15ccf9",
"android/build.gradle": "519fb42e618d727ec96c11852d61b3b3",
"android/gradle.properties": "4a756df24e4431aa00ea27ee9b863c97",
"android/settings.gradle": "10881f279cc48040996c7354515e0da7",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "4a6ea85af1039df34a3cfaa1b67d81d5",
"lib/core/routers/routers.dart": "42015358879e46b05972b087030e8eac",
"lib/core/util/dialogs.dart": "c9f9426aa59e68c66b6fa72c6c34bfd9",
"lib/core/inject/inject.dart": "7625bcaf1defcd449c6ada73ec6e7473",
"lib/layers/data/datasources/get_reservation_by_id_datasource.dart": "dcfab9ae2f0869f5871a1c1ab653d2fc",
"lib/layers/data/datasources/authenticate_user_datasource.dart": "7b820bf08264b2c678858ff2d166a611",
"lib/layers/data/datasources/get_available_court_by_date_datasource.dart": "e53e00c4a3bd166e5ffd88a9133e6e64",
"lib/layers/data/datasources/request_new_reservation_datasource.dart": "961c6cd65d9b13976548b0edabdd453b",
"lib/layers/data/datasources/remove_person_reservation_datasource.dart": "d734930930e71902401df704e80008d5",
"lib/layers/data/datasources/get_reservations_by_user_datasource.dart": "6c2b9e4b5ca1dad026a8e4a832e98dd9",
"lib/layers/data/datasources/remote/get_reservations_by_user_datasource_impl.dart": "7a87ea8fbeeea99c6472cfff10c2b62e",
"lib/layers/data/datasources/remote/remove_person_reservation_datasouce_impl.dart": "15d1917e0b4a72ddb573d30f7fa47647",
"lib/layers/data/datasources/remote/get_reservation_by_id_datasource_impl.dart": "33d525a425a3296e5ba33ff0d4ab4505",
"lib/layers/data/datasources/remote/get_available_court_by_date_datasource_impl.dart": "9486b27b117fd08a675c3593184b00e8",
"lib/layers/data/datasources/remote/authenticate_user_datasource_impl.dart": "b76307a9a1a9532af02529a77bbc19f5",
"lib/layers/data/datasources/remote/request_new_reservation_datasource_impl.dart": "44b9586aff11956db8c2b1b6656b5658",
"lib/layers/data/dto/available_court_dto.dart": "2df8700ffc50fdb974debd69c571611c",
"lib/layers/data/dto/reservation_dto.dart": "44384e5919cb19c7f6b906cf1f75b3b3",
"lib/layers/data/dto/person_reservation_dto.dart": "73fcf0d852aa3594edab92eddeb98fc7",
"lib/layers/data/dto/person_dto.dart": "bebcebf024f8242caad4c8c690cdef44",
"lib/layers/data/dto/reservation_datail_dto.dart": "c3c4618e88465a84458f4d015a240eaf",
"lib/layers/data/dto/court_dto.dart": "8a10e90929c8f8cc7128c94168952c07",
"lib/layers/data/dto/user_dto.dart": "025320e36beec28748e919bf41e790bc",
"lib/layers/data/repositories/remove_person_reservation_repository_impl.dart": "71b2fc042386482f51d1c04e63f2157b",
"lib/layers/data/repositories/get_reservation_by_id_repository_impl.dart": "1013c53d0a8af9dac7cb7da38215b3e6",
"lib/layers/data/repositories/get_available_court_by_date_repository_impl.dart": "67e3c1679fd7a92672923b16ab5b082a",
"lib/layers/data/repositories/get_reservations_by_user_repository_impl.dart": "912a5814d962ca40ae001a096343b2d5",
"lib/layers/data/repositories/request_new_reservation_repository.dart": "4e16be1cecc878991379f7620965b2dd",
"lib/layers/data/repositories/authenticate_user_repository_impl.dart": "a5828ea773697b1f898e2f1e2a6fc608",
"lib/layers/domain/repositories/get_available_court_by_date_repository.dart": "df5fdab65358522c70c42d1c0534c9f6",
"lib/layers/domain/repositories/authenticate_user_repository.dart": "1943ff36c7303f1cb020bbdaa843f346",
"lib/layers/domain/repositories/get_reservation_by_id_repository.dart": "aa4fa014c73f86ec98eea219b97bdf03",
"lib/layers/domain/repositories/request_new_reservation_usecase.dart": "2141642972e2cd948895c7dfda3b4d28",
"lib/layers/domain/repositories/get_reservations_by_user_repository.dart": "dfb9a74a3713eefe648c1af2b46870cc",
"lib/layers/domain/repositories/remove_person_reservation_repository.dart": "cecfccded285b931319488cff05d150e",
"lib/layers/domain/usecases/authenticate_user_usecase.dart": "ead4bacd5ece2e82fddacb4cb4a3f49c",
"lib/layers/domain/usecases/get_available_court_by_date_usecase.dart": "1e7e3282432cd852de4ed79fb1013e24",
"lib/layers/domain/usecases/request_new_reservation_usecase.dart": "57fb952820c904db4bb5edb79786edd2",
"lib/layers/domain/usecases/remove_person_reservation_usecase.dart": "18eabd4372209d05b3a4fe75a560644a",
"lib/layers/domain/usecases/get_reservation_by_id_usecase.dart": "dc3fc0aa934d8438f212d1454a8e24c8",
"lib/layers/domain/usecases/get_reservations_by_user_usecase.dart": "b11401e1ccf2534842c020f921c57716",
"lib/layers/domain/entities/reservation_entity.dart": "bae3b060c4a478d3b09bb297fad240e6",
"lib/layers/domain/entities/person_entity.dart": "60685978b74f401f57afee58e57e049f",
"lib/layers/domain/entities/person_reservation_entity.dart": "f26f1fa01b84450cc912bf66bc8be6c8",
"lib/layers/domain/entities/user_entity.dart": "5955257a1c83b7dab790349e5378e6d4",
"lib/layers/domain/entities/court_entity_entity.dart": "1ea8f1515c1186df62d6dd3f9ab3e582",
"lib/layers/domain/entities/reservation_request_entity.dart": "12da6ca79add83d147e6eccec43d548e",
"lib/layers/domain/entities/reservation_datail_entity.dart": "4734307756d6a6ac0aad181f9ac8b0e1",
"lib/layers/domain/entities/carro_entity.dart": "7894f36455a9923059854d0b5c8ca22e",
"lib/layers/domain/entities/available_court_entity.dart": "25b9518571c97978d2653bbd0c3dbb77",
"lib/layers/presentation/ui/pages/reservations/reservation_detail_page.dart": "f567caf76815780adea35d0df92c61ee",
"lib/layers/presentation/ui/pages/reservations/new_reservation_page.dart": "407995de193c90307976450f53c954fe",
"lib/layers/presentation/ui/pages/reservations/reservations_page.dart": "69ba6cd53204feeb5f69363202753bb0",
"lib/layers/presentation/ui/pages/sign_up/sing_up_page.dart": "bf4181573e00c3efaa0ea3b100defab7",
"lib/layers/presentation/ui/pages/login/login_page.dart": "66e19b4d44b8c93f19961bbc065ef7c2",
"lib/layers/presentation/ui/widgets/app/drawer_widget.dart": "b53f79e12554774d586b7b371f3aac7f",
"lib/layers/presentation/provider/user_provider.dart": "c440d564378bed2e79bd8f86c3362675",
"lib/layers/presentation/controller/court_controller.dart": "0342346188edae45905f79deb7f16be6",
"lib/layers/presentation/controller/user_controller.dart": "08c288a147ee460bec4dd6dce811f606",
"lib/layers/presentation/controller/reservation_controller.dart": "97b0c34a7658131d747360d7708f6459",
"lib/main.dart": "aacb6bc64a0e92d6548a109878d50d6f",
"analysis_options.yaml": "90ca05185a2de012cebf6fb9f85f3598",
".git/config": "ced48e88dbc0b5befca0e2247153d543",
".git/objects/9e/29486b9f57488dc9b31fd2b5d352d9159f72d3": "17822116ce0369f006f04f284c8e93a9",
".git/objects/32/b5fe1cca137e5d4e0bd50259bcb413a2b8a952": "55043bc0b3b2496657300dcb3b019e61",
".git/objects/58/a4247a82fc416f38c451fd9b1b5599b722d332": "da029327c38ea85d9cc8d9b32facd923",
".git/objects/05/d08518b174f3c6ba96ce7f07270e2f679453ff": "a059dcfb2c49643e29f80bd2df642575",
".git/objects/d9/e91c2f5ff109030d6be856bf198d59c62407e9": "60497263994c9c7765967ba909f6c778",
".git/objects/df/db46b621d06debfcb743f8fc54dd8817d1f619": "07e44be633dd75ada38372e05d884e0b",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/f3/b8d23572d20b8419633aa1587ada93a3eb6d09": "2823d38468d4db91f42e53e5a246d544",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c1/d9adbb9bbe99abe5839f4bc832afa667596918": "5fa6f8a22048103e3059597be804fa69",
".git/objects/pack/pack-54a841fa749d9884822c8def3132a2c025c44200.idx": "61d77100fb038a77090040dc76655a27",
".git/objects/pack/pack-54a841fa749d9884822c8def3132a2c025c44200.pack": "8b72dc05318ad7f6ad5d43176a5b8027",
".git/objects/7c/fb6f962bdb8c4b610bb1bb25b6c4361f9d20e8": "20235224869b650fc9ceb371e56bb5c9",
".git/objects/87/de66d0048c2f5ba663ffe9baf852e19ef91809": "37bf73e74cf61fa09f0b9ac0c6c34a60",
".git/objects/1a/b847b818dec389fb43fb9da80637c02e27d3d3": "8af286f2a069534106d53e8c037b0a4a",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6b/407bb4a09c2e07a0dedfa626e5821a894b5b7b": "2cf17b5a84b45c447483179a7ca72238",
".git/objects/3f/7682a6e830e34f27e98a37d386fa63b2985df4": "1acac7a08041d4c873c649de6751474c",
".git/objects/97/8746b5424d1212460133977131fc5ef0971abb": "3cc094294d4d3275ff02b12eff5e10c3",
".git/objects/63/cae3690ce52df6fbca6d1b85dcbd9955a63261": "ffbba8b2e0f3ce4efd06ee95b757f969",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/daff03127f43b2854f6153479a50f7d46e11fd": "9877e40a72adcde34c979ab37797f18a",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/de/b9b7bab8a701a9c331ce1d86841dbbd9f5fe31": "0d13e21958f5924d038c486ea71491d3",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/cc/5725b315760d100f6386e6bbf09af8fe57a9f1": "29c19352d2bee0821600856656c95791",
".git/objects/f6/55ba5cc7d5b9192bfbba1e453e50be4978df1f": "5abe58b0fd311ca129e82fb8752d1ef2",
".git/objects/e9/d690cbdcfda1acb3db3c49ab43c3dac79b7042": "674c255fa109e986c0f7591cb2439e29",
".git/objects/e9/d537a83a3257910295faedaf27a62ecbf2d609": "696b52e9f5f7dfdfa884a2d3f70b3eb8",
".git/objects/e7/def95d3f44c82086f6e74d93fc0aadac7c454a": "28a34a73fd3e94b3fd53733dfaf2ed0e",
".git/objects/e0/2012ca0a73da86edd7614aebdc24f350669305": "4cb516f7f367eb8387729d8cfc7cf9b2",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/76/584206c4cbc5d0d5fc8e0d4cbd513cad82b5d8": "23c8dbaac905146fe35186a8dac4414a",
".git/objects/2b/2c3a562b375d8b8666585df340e8f3868f38a8": "92a5ead6e841d0afb413c30b02850499",
".git/objects/14/fb96f9a80f3eccd96ed0a2f9b204cf45982879": "703f4114336defbb66455a84667770dd",
".git/objects/8e/802d3994df7262caabc8972147eea9ff93a15f": "ade07e0d6948385d859b6ed4bcaccd7e",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "b027631eff5ed0738ecd4ac65f0ea467",
".git/logs/refs/heads/master": "910d71413c4e9633d014f79447c9a1a5",
".git/logs/refs/heads/main": "75c541d5d75f55bdef52e711135c5160",
".git/logs/refs/remotes/origin/master": "45957615af6dfd2b2812531a8ae3d5f5",
".git/logs/refs/remotes/origin/main": "1a4aeb38a0dd1d93d7515b82e4997f4d",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/master": "23954526dbb353244d5cb7b313398e97",
".git/refs/heads/main": "ec013c6c43a909d2fc66b705829f2540",
".git/refs/remotes/origin/master": "23954526dbb353244d5cb7b313398e97",
".git/refs/remotes/origin/main": "ec013c6c43a909d2fc66b705829f2540",
".git/index": "9c00d9e88e9e88e3d41392290c27f59a",
".git/COMMIT_EDITMSG": "3bd2411aa870f5c7f11ab30bb7688ea4",
".git/FETCH_HEAD": "dc4fc2b78a094c2b17e91bafe9b915e2",
"fonts/Pacifico-Regular.ttf": "85bb2d0ec4a0da159de42e89089ccc0b",
"assets/AssetManifest.json": "4ab67a1789aa541d889bb0347b2c0c55",
"assets/NOTICES": "0f978fdd13118ec5cf4908a70827106e",
"assets/FontManifest.json": "a3cd6d3714d3b0d9f19c158cf3fdd184",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "8e1e7a3768e9e57a554a8f70e7c6d222",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/Pacifico-Regular.ttf": "85bb2d0ec4a0da159de42e89089ccc0b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
