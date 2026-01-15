import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Glassmorphism Login UI - A showcase of modern Flutter glass effect implementation
///
/// This application demonstrates the glassmorphism design trend using Flutter's
/// BackdropFilter and advanced color blending techniques. The UI features:
/// - Frosted glass login card with blur effects
/// - Vibrant animated background to showcase transparency
/// - Modern input fields and buttons with glass styling
/// - Responsive layout that works across devices
///
/// Perfect for showcasing Flutter's capabilities in creating visually stunning
/// user interfaces with performance-optimized rendering.
void main() => runApp(const GlassSampleApp());

/// Main application widget that initializes the Glassmorphism UI showcase
class GlassSampleApp extends StatelessWidget {
  const GlassSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GlassLoginScreen(),
      title: 'Glassmorphism Login',
      theme: ThemeData.dark().copyWith(
        // Use a dark theme to make the glass effects more pronounced
        scaffoldBackgroundColor: Colors.transparent,
      ),
    );
  }
}

/// Main login screen showcasing the glassmorphism effect
///
/// This screen demonstrates the core glass effect implementation with:
/// - A vibrant animated background that highlights transparency
/// - A frosted glass login card with blur effects
/// - Glass-styled input fields and buttons
/// - Responsive layout that adapts to different screen sizes
class GlassLoginScreen extends StatelessWidget {
  const GlassLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Transparent scaffold to allow background to show through
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // 1. DYNAMIC BACKGROUND (Lighter & Colorful to show off Glass)
          // The vibrant background is essential for demonstrating the glass effect
          // as it provides visual content that gets blurred behind the glass card
          const _VibrantBackground(),

          // 2. THE GLASS CARD - Centered with responsive padding
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Glass logo - demonstrates glass effect on circular elements
                  const _GlassLogo(),
                  const SizedBox(height: 30),

                  // Main glass card containing the login form
                  _GlassCard(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Title with modern typography
                        Text(
                          "Glassmorphism UI",
                          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 8),

                        // Subtitle explaining the glass effect
                        Text(
                          "Notice how the background blurs behind this card.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 0.7), fontSize: 13),
                        ),
                        const SizedBox(height: 30),

                        // Username input field with glass styling
                        _buildGlassInput("Username"),
                        const SizedBox(height: 16),

                        // Password input field with glass styling
                        _buildGlassInput("Password"),
                        const SizedBox(height: 30),

                        // Login button with glass effect
                        _buildGlassButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds a glass-styled input field with frosted glass appearance
  ///
  /// Features:
  /// - Translucent white background with blur-like appearance
  /// - White text for high contrast against glass background
  /// - Subtle white border to define the input area
  /// - Proper padding for comfortable text input
  Widget _buildGlassInput(String hint) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color.fromRGBO(255, 255, 255, 0.1)),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color.fromRGBO(255, 255, 255, 0.54)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }

  /// Builds a glass-styled button with frosted glass appearance
  ///
  /// Features:
  /// - Slightly more opaque than input fields for visual hierarchy
  /// - Full width design for modern UI aesthetics
  /// - Bold typography with letter spacing for emphasis
  /// - Consistent glass styling with other UI elements
  Widget _buildGlassButton() {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.2),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color.fromRGBO(255, 255, 255, 0.2)),
      ),
      child: Center(
        child: Text(
          "LOGIN",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
      ),
    );
  }
}

/// Frosted Glass Card Component
///
/// The core implementation of the glassmorphism effect using Flutter's BackdropFilter.
/// This component creates the signature frosted glass appearance by:
/// 1. Applying a Gaussian blur to the background content
/// 2. Overlaying a semi-transparent white layer
/// 3. Adding a subtle border to define the glass edges
///
/// Key Parameters:
/// - sigmaX/sigmaY: Controls the intensity of the blur effect (15 = strong blur)
/// - opacity: 0.1 provides the perfect balance between transparency and visibility
/// - border: Thin white border (opacity 0.2) creates the "glass edge" effect
class _GlassCard extends StatelessWidget {
  final Widget child;
  const _GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        // High sigma values make the glass look "heavier"
        // sigmaX and sigmaY of 15 create a strong blur effect that's
        // visually appealing while maintaining good performance
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            // Translucent white with a very low opacity (10%)
            // This creates the "frosted glass" appearance
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            borderRadius: BorderRadius.circular(30),
            // The thin white border gives the glass its "edge"
            // Opacity of 20% creates a subtle but visible boundary
            border: Border.all(color: const Color.fromRGBO(255, 255, 255, 0.2)),
          ),
          child: child,
        ),
      ),
    );
  }
}

/// Vibrant Animated Background
///
/// This background is specifically designed to showcase the glassmorphism effect.
/// It features:
/// - A deep green base color that contrasts well with white glass elements
/// - Two large animated orbs with radial gradients
/// - Cyan and teal color scheme that creates a futuristic, high-tech aesthetic
/// - Strategic positioning to create visual interest behind the glass card
///
/// The background content is essential for demonstrating the blur effect,
/// as it provides visual elements that get beautifully distorted behind the glass.
class _VibrantBackground extends StatelessWidget {
  const _VibrantBackground();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // Deep green background color (RGB: 67, 120, 38)
      // This color provides excellent contrast for the white glass elements
      // while creating a modern, nature-inspired aesthetic
      color: const Color.fromARGB(255, 67, 120, 38),
      child: Stack(
        children: [
          // Top Left Cyan Orbit - Large radial gradient
          // Positioned off-screen to create an atmospheric blend effect
          Positioned(top: -400, left: -0, child: _AnimatedOrb(color: const Color.fromRGBO(24, 255, 243, 0.3))),

          // Bottom Right Cyan Orbit - Complementary gradient
          // Creates balance in the composition
          Positioned(bottom: -50, right: -30, child: _AnimatedOrb(color: const Color.fromRGBO(185, 246, 255, 0.3))),
        ],
      ),
    );
  }
}

/// Animated Orb with Radial Gradient
///
/// Creates large, atmospheric gradient orbs that serve as:
/// - Visual interest points in the background
/// - Demonstration of the blur effect through the glass
/// - Color accents that complement the overall design
///
/// The radial gradient creates a natural fade-out effect:
/// - Center: Full color intensity
/// - Middle: 10% opacity for soft transition
/// - Edge: Fully transparent for seamless blending
class _AnimatedOrb extends StatelessWidget {
  final Color color;
  const _AnimatedOrb({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800, // Large size creates atmospheric, soft-edged orbs
      height: 800, // Perfect for creating depth and visual interest
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color, // Full intensity at center
            color.withOpacity(0.1), // Soft transition
            Colors.transparent, // Seamless blend into background
          ],
          stops: const [0.0, 0.4, 1.0],
        ),
      ),
    );
  }
}

/// Glass Logo Component
///
/// Circular glass logo that demonstrates the glass effect on non-rectangular elements.
/// Features:
/// - Circular shape with frosted glass appearance
/// - Blur icon that symbolizes the glassmorphism technique
/// - Subtle border to define the logo edges
/// - Consistent styling with other glass elements
///
/// This component shows how glassmorphism can be applied to various shapes,
/// not just rectangular cards.
class _GlassLogo extends StatelessWidget {
  const _GlassLogo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        // Semi-transparent white (20% opacity) for frosted glass look
        color: const Color.fromRGBO(255, 255, 255, 0.2),
        shape: BoxShape.circle,
        // Subtle border (30% opacity) to define the circular shape
        border: Border.all(color: const Color.fromRGBO(255, 255, 255, 0.3)),
      ),
      child: const Icon(Icons.blur_on, color: Colors.white, size: 40),
    );
  }
}
