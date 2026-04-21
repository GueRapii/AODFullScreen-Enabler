# 📱 AOD FullScreen Enabler for Samsung

A Magisk/KernelSU Module designed to unlock the exclusive S24-style Full Screen Always On Display (Wallpaper) feature on Samsung devices running One UI 6.1 and above.

## ✨ Features

This module dynamically patches the system's floating features to enable:

*   **🖼️ Full Screen AOD Wallpaper:** Brings the premium S24 wallpaper experience to your AOD.
*   **⚡ Non-LTPO Optimization:** Specially tuned to work on devices without LTPO panels while maintaining stability.
*   **🎨 Seamless Integration:** Unlocks the native One UI 6.1+ settings for AOD wallpaper.
*   **🛠️ Smart Patching:**
    *   Automatically detects and modifies `floating_feature.xml`.
    *   Ensures compatibility across various Samsung models.

## ⚠️ Requirements

*   **Device:** Samsung (Strictly enforced via `ro.product.brand` check).
*   **Root:** Magisk or KernelSU installed.
* **Mandatory Modules:** You must have either [MagicMount](https://github.com/KernelSU-Modules-Repo/magic_mount_rs/releases/) or [OverlayFS](https://github.com/KernelSU-Modules-Repo/meta-overlayfs/releases/) installed to ensure system file patching works correctly.
*   **OS:** Android-based Samsung OneUI.

## 🚀 Installation

1.  Download the module zip.
2.  Install via Magisk App / KernelSU.
3.  Reboot your device.
4.  Go to **Settings > Lock screen and AOD > Always On Display** to enable the new wallpaper options.

## 💬 Support & Community

Join our Telegram channel for updates or contact the developers directly:

[![Telegram Channel](https://img.shields.io/badge/Telegram-Channel-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/randommodules)
[![GueRapii](https://img.shields.io/badge/Chat-GueRapii-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/GueRapii)

## ⚠️ Disclaimer

**Battery Consumption:** Enabling Full Screen AOD on non-LTPO displays may result in higher battery usage compared to the standard black AOD. Use at your own discretion.

## 🛠️ Uninstallation

Simply remove the module via Magisk/KernelSU and reboot. Your system features will revert to their original state.

## 📜 License

Copyright © 2026 GueRapii (@randommodules).
This module is free to use. However, **copying, redistributing, or using this code in other scripts requires explicit permission** from the developer and must include proper attribution.

---
*Developed with ✨ for Samsung Power Users.*
