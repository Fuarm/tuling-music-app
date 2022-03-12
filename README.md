***A new music app by flutter***

### 1、Flutter 路由

在 MaterialApp 中设置 routes 属性
```dart
MaterialApp(
  // 初始路由
  initialRoute: '/',
  routes: {
    '/': (context) => const Home()
  },
);
```
### 2、主题色

在 MaterialApp 中设置 theme 属性
```dart
MaterialApp(
  theme: ThemeData(
    // 主题色
    primarySwatch: Colors.white,
    // 设置tabBar主题色
    tabBarTheme: tabBarTheme,
  ),
);
```

### 3、切割组件、Mask 组件、Scroll 滚动组件、TabBar 组件
```dart
/** 切割组件
 * 1、Container clipBehavior 属性
 * 2、ClipRect、ClipRRect 等组件
 * 3、ClipPath 自定义切割组件
 */

/** Mask 组件  ShaderMask
 * 1、LinearGradient 等 渐变组件可以直接生成 shader
 * 2、ImageShader 实现
 */
ShaderMask(
    shaderCallback: (Rect bounds) {
        return RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            tileMode: TileMode.mirror,
        ).createShader(bounds);
    },
    child: const Text('I’m burning the memories'),
)

ShaderMask(
    shaderCallback: (Rect bounds) {
        return ImageShader(
            <ui.Image>,
            TileMode.clamp,
            TileMode.clamp,
            Float64List.fromList([
                1, 0, 0, 0,
                0, 1, 0, 0,
                0, 0, 1, 0,
                0, 0, 0, 1,
            ]),
        );
    },
    blendMode: BlendMode.srcATop,
    child: const Text('I’m burning the memories'),
);

// <ui.Image> 实现
Future<ImageInfo> _getImageInfo(Image imageSource) {
  Completer<ImageInfo> completer = Completer<ImageInfo>();
  imageSource.image
      .resolve(const ImageConfiguration())
      .addListener(ImageStreamListener(
          (ImageInfo info, bool _) => completer.complete(info)
  ));
  return completer.future;
}

_getImageInfo(Image.network('')).image

```