import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/partners_model.dart';
import '../notifier/partners_notifier.dart';
import 'universal_page.dart';

class UniversalPlaceCard extends ConsumerStatefulWidget {
  final PlaceModel place;
  final PlaceCategory category;

  const UniversalPlaceCard({
    super.key,
    required this.place,
    required this.category,
  });

  @override
  ConsumerState<UniversalPlaceCard> createState() => _UniversalPlaceCardState();
}

class _UniversalPlaceCardState extends ConsumerState<UniversalPlaceCard> {
  late final PageController _pageController;
  Timer? _autoScrollTimer;
  int _currentPage = 0;

  static const _cardWidth = 280.0;
  static const _autoScrollDuration = Duration(seconds: 4);
  static const _transitionDuration = Duration(milliseconds: 350);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(_autoScrollDuration, (_) {
      if (!mounted || !_pageController.hasClients) return;

      final nextPage = (_currentPage + 1) % widget.place.imageUrls.length;
      _pageController.animateToPage(
        nextPage,
        duration: _transitionDuration,
        curve: Curves.easeInOut,
      );
    });
  }

  void _resetAutoScrollTimer() {
    _autoScrollTimer?.cancel();
    _startAutoScroll();
  }

  void _onPageChanged(int page) {
    if (mounted) {
      setState(() => _currentPage = page);
    }
  }

  void _toggleFavorite() {
    ref
        .read(placeProvider.notifier)
        .toggleFavorite(widget.category, widget.place.id);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ImageCarousel(
            imageUrls: widget.place.imageUrls,
            currentPage: _currentPage,
            pageController: _pageController,
            onPageChanged: _onPageChanged,
            onManualScroll: _resetAutoScrollTimer,
            distance: widget.place.distance,
            discount: widget.place.discount,
            isFavorite: widget.place.isFavorite,
            onFavoriteToggle: _toggleFavorite,
          ),
          const SizedBox(height: 12),
          _PlaceInfo(name: widget.place.name, location: widget.place.location),
        ],
      ),
    );
  }
}

class _ImageCarousel extends StatelessWidget {
  final List<String> imageUrls;
  final int currentPage;
  final PageController pageController;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onManualScroll;
  final String distance;
  final String? discount;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const _ImageCarousel({
    required this.imageUrls,
    required this.currentPage,
    required this.pageController,
    required this.onPageChanged,
    required this.onManualScroll,
    required this.distance,
    this.discount,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            _buildPageView(),
            _buildGradientOverlay(),
            _buildTopBadges(),
            _buildFavoriteButton(),
            _buildPageIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageView() {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollStartNotification) {
          onManualScroll();
        }
        return false;
      },
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Image.asset(
            imageUrls[index],
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, size: 48),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGradientOverlay() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [Colors.black.withOpacity(0.3), Colors.transparent],
        ),
      ),
    );
  }

  Widget _buildTopBadges() {
    return Positioned(
      top: 12,
      left: 12,
      child: Row(
        children: [
          _Badge(text: distance, icon: Icons.navigation),
          if (discount != null) ...[
            const SizedBox(width: 8),
            _Badge(text: discount!),
          ],
        ],
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return Positioned(
      top: 12,
      right: 12,
      child: GestureDetector(
        onTap: onFavoriteToggle,
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Positioned(
      bottom: 12,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          imageUrls.length,
          (index) => _DotIndicator(isActive: index == currentPage),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  final IconData? icon;

  const _Badge({required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, color: Colors.white, size: 12),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _DotIndicator extends StatelessWidget {
  final bool isActive;

  const _DotIndicator({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.5),
      width: isActive ? 20 : 6,
      height: 3,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class _PlaceInfo extends StatelessWidget {
  final String name;
  final String location;

  const _PlaceInfo({required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1A1A1A),
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 14,
              color: Color(0xFF999999),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                location,
                style: const TextStyle(fontSize: 13, color: Color(0xFF666666)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
