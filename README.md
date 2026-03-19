# TradeApp

This is a Flutter project I built for managing stock watchlists and showing live market summaries.  
The app is modular, responsive, and uses BLoC for state management.

## What’s inside

- **Watchlist:** Add, reorder, and delete stocks.
- **Edit Watchlist:** Drag-and-drop to reorder, changes are saved and reflected in the main screen.
- **Live Market Summary:** NIFTY Bank and SENSEX values update in real time (currently mocked, can be connected to a real API).
- **Responsive UI:** All paddings, font sizes, icon sizes, etc. are centralized for easy scaling.
- **Clean code:** Widgets are modular, styling is centralized, and business logic is separated.

## My Approach

- Used `flutter_bloc` for all state management.
- All UI values (gaps, paddings, font sizes, icon sizes, border radii) are defined in `lib/utils/responsive.dart`.
- Colors and text styles are in `lib/utils/app_colors.dart` and `lib/utils/app_text_styles.dart`.
- Watchlist order is managed in the BLoC and persists across navigation.
- Market summary values update every second via a timer in the BLoC (easy to swap for WebSocket/API).

## Project Structure

```
lib/
  bloc/
    market_summary_bloc.dart
    watchlist_bloc.dart
  data/
    stock_model.dart
  screens/
    editwatchlist_screen.dart
    watchlist_screen.dart
    widgets/
      app_divider.dart
      editwatchlist_action_buttons.dart
      market_summary_header.dart
      reorderable_stock_list.dart
      sort_button.dart
      watchlist_name_card.dart
      watchlist_tabs.dart
  utils/
    app_colors.dart
    app_text_styles.dart
    responsive.dart
```

## How to run

1. Clone the repo:
   ```bash
   git clone https://github.com/kasim121/TradeApp.git
   cd TradeApp
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run:
   ```bash
   flutter run
   ```

## Notes

- All code is written by me, following best practices.
- UI is fully responsive and modular.
- Real-time updates are mocked for demo; can be connected to a real data source.

---

## Screenshots

![Watchlist Screen](assets/images/watchlist_screenshort.jpeg)
**Watchlist Screen**

![Edit Watchlist Screen](assets/images/editwatchlist_screenshort.jpeg)
**Edit Watchlist Screen**