# 🔮 Glassmorphism Login UI

A stunning Flutter implementation of the glassmorphism design trend, showcasing advanced UI techniques with frosted glass effects, blur processing, and vibrant animations.

[![Flutter](https://img.shields.io/badge/Flutter-3.0%2B-blue)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-brightgreen)](https://flutter.dev/multi-platform)


<p align="center">
  <img style="width:27%; height:auto;" 
       alt="Screenshot_1" 
       src="https://github.com/user-attachments/assets/b25b2f71-524d-496c-a8ec-73300eeeb02f" />
    <img style="width:27%; height:auto;" 
       alt="Screenshot_2" 
       src="https://github.com/user-attachments/assets/7fdd92f8-e052-4b52-a2b1-c60834ce4813" />
   <img style="width:27%; height:auto;" 
       alt="Screenshot_2" 
       src="https://github.com/user-attachments/assets/931f175b-3191-4d64-abf4-6de308f61010" />
</p>



## 🌟 Features

- **🎨 Glassmorphism Design**: Authentic frosted glass effect using Flutter's `BackdropFilter`
- **🌀 Vibrant Animations**: Smooth radial gradient orbs that create depth
- **📱 Responsive Layout**: Adapts beautifully to all screen sizes
- **✨ Modern UI Elements**: Glass-styled inputs, buttons, and cards
- **🎯 Performance Optimized**: Efficient rendering with proper opacity management
- **📐 Clean Architecture**: Well-structured, documented, and maintainable code

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- Android Studio / VS Code with Flutter plugin

### Installation

1. **Clone the repository:**

```bash
git clone https://github.com/anis-zouaghi/glassmorphism-login.git
cd glassmorphism-login
```

2. **Install dependencies:**

```bash
flutter pub get
```

3. **Run the app:**

```bash
flutter run
```

## 🔧 Technical Implementation

### Glassmorphism Core Components

#### 1. **Frosted Glass Card** 🃏

```dart
BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
  child: Container(
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.1), // 10% opacity white
      border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2)),
    ),
    // Your content here
  ),
)
```

**Key Parameters:**
- `sigmaX/sigmaY: 15` - Strong blur for authentic glass effect
- `opacity: 0.1` - Perfect balance between transparency and visibility
- `border opacity: 0.2` - Subtle edge definition

#### 2. **Vibrant Background** 🎨

```dart
Container(
  color: Color.fromARGB(255, 67, 120, 38), // Deep green base
  child: Stack(
    children: [
      Positioned(
        top: -400,
        left: 0,
        child: _AnimatedOrb(color: Color.fromRGBO(24, 255, 243, 0.3)),
      ),
      // Additional orbs...
    ],
  ),
)
```

#### 3. **Radial Gradient Orbs** 🌌

```dart
Container(
  width: 800,
  height: 800,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    gradient: RadialGradient(
      colors: [
        color,                    // Full intensity
        color.withOpacity(0.1),   // Soft transition
        Colors.transparent,      // Seamless blend
      ],
      stops: [0.0, 0.4, 1.0],
    ),
  ),
)
```

## 📚 Glassmorphism Best Practices

### ✅ Do's

- **Use vibrant backgrounds** - Glass effects need visual content to blur
- **Maintain opacity balance** - 10-20% opacity works best for glass
- **Add subtle borders** - Helps define glass edges (0.1-0.3 opacity)
- **Optimize blur intensity** - sigma values of 10-20 work well
- **Use dark themes** - Glass effects are more pronounced on dark backgrounds

### ❌ Don'ts

- **Don't overuse blur** - Excessive blur can impact performance
- **Avoid plain backgrounds** - Glass needs content to showcase the effect
- **Don't use high opacity** - Glass should be translucent, not opaque
- **Avoid complex shapes** - Stick to simple rectangles and circles for best results

## 🎨 Color Palette

| Color | Hex Code | Usage |
|-------|----------|-------|
| Deep Green | `#437826` | Background |
| Cyan | `#18FFEB` | Top orb (30% opacity) |
| Light Cyan | `#B9F6FF` | Bottom orb (30% opacity) |
| Glass White | `FFFFFF` | Glass elements (10-30% opacity) |

## 📱 Responsive Design

The layout uses:
- `SingleChildScrollView` for scrollable content
- `Center` widget for perfect centering
- Responsive padding (`EdgeInsets.symmetric(horizontal: 24)`)
- Flexible sizing for all elements

## 🔧 Customization

### Change Glass Opacity

```dart
// More transparent (5% opacity)
color: Color.fromRGBO(255, 255, 255, 0.05)

// More opaque (15% opacity)
color: Color.fromRGBO(255, 255, 255, 0.15)
```

### Adjust Blur Intensity

```dart
// Softer blur
ImageFilter.blur(sigmaX: 10, sigmaY: 10)

// Stronger blur
ImageFilter.blur(sigmaX: 20, sigmaY: 20)
```

### Change Background Colors

```dart
// Modify in _VibrantBackground class
color: Color.fromARGB(255, 30, 50, 80), // Deep blue
```

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**
2. **Create your feature branch**: `git checkout -b feature/your-feature`
3. **Commit your changes**: `git commit -m 'Add some feature'`
4. **Push to the branch**: `git push origin feature/your-feature`
5. **Open a pull request**

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by modern UI design trends
- Built with ❤️ using Flutter
- Special thanks to the Flutter community

## 📬 Contact

**Anis Zouaghi**
- GitHub: [@znissou](https://github.com/znissou)
- Email: anis@zouaghi.com

---

🌟 **Star this repo** if you found it helpful! 🌟

📱 **Try it on your device** and experience the magic of glassmorphism! 🎨
