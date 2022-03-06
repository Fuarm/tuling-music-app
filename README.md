# TuLing Music App

A new music app by flutter

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
