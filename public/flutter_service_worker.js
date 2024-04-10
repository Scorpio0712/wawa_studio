'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a737479a38c6914706db724d1e0a63d4",
"assets/AssetManifest.bin.json": "02d0c7a11ab511624b7adc1a2d90ffde",
"assets/AssetManifest.json": "e05f05332e7bea380da628bf923b7941",
"assets/assets/image/pic_1.jpg": "a9c5bcc5eb6022a94ace24bb22567a2e",
"assets/assets/image/pic_10.JPG": "2b22c064f7e4e17dc6c1d5f5303de46c",
"assets/assets/image/pic_11.JPG": "b2b7e71087f221b36cf82d2e46964bac",
"assets/assets/image/pic_12.JPG": "8e37355d489c14307876a9ba9f60d590",
"assets/assets/image/pic_13.JPG": "53f4bfff0cdd6743f749e55744c579a7",
"assets/assets/image/pic_14.JPG": "70b13b1fddc323ee88b16f6971f50f7e",
"assets/assets/image/pic_15.JPG": "5fd0e6dc45172a49d2d76063e88cf51b",
"assets/assets/image/pic_16.JPG": "ad35443379730b111e89c6538f70be28",
"assets/assets/image/pic_17.JPG": "27c8b68afc31170df067e5e4a31b0bbd",
"assets/assets/image/pic_18.JPG": "4ec247d9d51cfd8d09942643b63aed85",
"assets/assets/image/pic_19.JPG": "2523b3ec35fff3da610e8b84a42db44b",
"assets/assets/image/pic_3.jpg": "d93d6d2f7bf9525dee49900fd0671cda",
"assets/assets/image/pic_4.JPG": "e76749300e036272c23d31c83c8de1e0",
"assets/assets/image/pic_5.JPG": "bf30bd13a92f24909e24c1df343adef9",
"assets/assets/image/pic_6.JPG": "f6a44ba3c0dc1e2c972a1b8357c5609b",
"assets/assets/image/pic_7.JPG": "e0a5f23d052ebebc46a6640e77882eb8",
"assets/assets/image/pic_8.JPG": "018a9da35ebf511782d4f0cd533a3dd3",
"assets/assets/image/pic_9.JPG": "865119f84849e602f804113f3199f24f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "459d5c9b1f7907032b2280a32a5405e3",
"assets/NOTICES": "461a427432679933766d5513a2a51e52",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "6ae93ae7c4f62a1ae895fdc5e4cb425c",
"canvaskit/canvaskit.wasm": "5cf28ac0dbb63e74b1d850e140f37c23",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "01e9c0d26c27afa2d25c7d9e531f82c8",
"canvaskit/chromium/canvaskit.wasm": "3fd113e4cbc6988513379ddf1d05220b",
"canvaskit/skwasm.js": "f17a293d422e2c0b3a04962e68236cc2",
"canvaskit/skwasm.js.symbols": "6b390003b06088cd4955caa1ca737415",
"canvaskit/skwasm.wasm": "c6042be1d0aeacee90e9e3d63da987eb",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "aba7b036f6610f6e423392ea8d4c0051",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "fc4be88fb0d44b63757507b6f7f559e2",
"/": "fc4be88fb0d44b63757507b6f7f559e2",
"main.dart.js": "6adc320498553197cacc9c6023ef217a",
"manifest.json": "ac0b5446fca1575d25784fc967a97a30",
"version.json": "7f4d1f8471ceaa69f72dbc609a720b4c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
