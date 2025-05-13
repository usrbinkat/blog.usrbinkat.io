---
author: "Kat Morgan"
title: "🔧 Golang installation and management in 2025 🚀"
description: "A comprehensive macOS and Linux approach to setting up and managing your Go development environment"
date: 2025-05-12
draft: false
thumbnail: /images/golang-lifecycle-plants.png
tags:
[
  "code",
  "golang",
  "developers",
  "technology",
  "software engineering",
]
---

Starting new projects can be overwhelming, especially when switching to long-forgotten or even new emerging skillsets, languages, and tools.

In recent weeks I've picked up new greenfield Go projects, and I realized it has been almost 4 years since I last started a new project in this language. Given the velocity of the developer tooling ecosystem, it felt prudent to research the latest trends and best practices to re-skill with the advantage of the latest tools and techniques.

After a dive into the interwebs and coming back with a number of pleasant surprises, I've settled on an approach leaning heavily on OS package manager for base Go installation, [mise](https://mise.jdx.dev/) for version management, and containers for development and production encapsulation. 🎉

I've included a healthy dose of basics to help new audiences get up and running, but as broad as the reach of this guide has become, I hope that even seasoned developers will walk away with something new to get excited about too.

<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg width="936" height="906" viewBox="0 0 936 906" style="fill:none;stroke:none;fill-rule:evenodd;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:1.5;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><style class="text-font-style fontImports" data-font-family="Roboto">@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=block');</style><g id="items" style="isolation: isolate"><g id="blend" style="mix-blend-mode: normal"><g id="g-root-ro_1hd7nou1ytdxq8-fill" data-item-order="-35640" transform="translate(362, 386)"><g id="ro_1hd7nou1ytdxq8-fill" stroke="none" fill="#545454"><g><path d="M 34 10L 166 10C 166 10 190 10 190 34L 190 184C 190 184 190 208 166 208L 34 208C 34 208 10 208 10 184L 10 34C 10 34 10 10 34 10"></path></g></g></g><g id="g-root-ro_qqaq3y1yt8b9g-fill" data-item-order="-19872" transform="translate(38, 494)"><g id="ro_qqaq3y1yt8b9g-fill" stroke="none" fill="#60436d"><g><path d="M 22 10L 274 10C 274 10 286 10 286 22L 286 70C 286 70 286 82 274 82L 22 82C 22 82 10 82 10 70L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_14303hq1yti5ms-fill" data-item-order="-16200" transform="translate(506, 683)"><g id="ro_14303hq1yti5ms-fill" stroke="none" fill="#60436d"><g><path d="M 22 10L 298 10C 298 10 310 10 310 22L 310 52C 310 52 310 64 298 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_1hcl9ri1yt8b9d-fill" data-item-order="-16200" transform="translate(14, 272)"><g id="ro_1hcl9ri1yt8b9d-fill" stroke="none" fill="#3b5649"><g><path d="M 22 10L 298 10C 298 10 310 10 310 22L 310 52C 310 52 310 64 298 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_1q7lsxa1yt8cum-fill" data-item-order="-15552" transform="translate(110, 122)"><g id="ro_1q7lsxa1yt8cum-fill" stroke="none" fill="#4c4371"><g><path d="M 22 10L 286 10C 286 10 298 10 298 22L 298 52C 298 52 298 64 286 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_mg3hri1yszxmw-fill" data-item-order="-13608" transform="translate(506, 161)"><g id="ro_mg3hri1yszxmw-fill" stroke="none" fill="#3e4e69"><g><path d="M 22 10L 250 10C 250 10 262 10 262 22L 262 52C 262 52 262 64 250 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_1uux0321yszxfy-fill" data-item-order="-13608" transform="translate(590, 311)"><g id="ro_1uux0321yszxfy-fill" stroke="none" fill="#68403f"><g><path d="M 22 10L 250 10C 250 10 262 10 262 22L 262 52C 262 52 262 64 250 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_hssalq1yt8d1n-fill" data-item-order="-12960" transform="translate(158, 722)"><g id="ro_hssalq1yt8d1n-fill" stroke="none" fill="#5c4938"><g><path d="M 22 10L 238 10C 238 10 250 10 250 22L 250 52C 250 52 250 64 238 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_v98lny1yt5jb6-fill" data-item-order="-12312" transform="translate(590, 497)"><g id="ro_v98lny1yt5jb6-fill" stroke="none" fill="#69425a"><g><path d="M 22 10L 226 10C 226 10 238 10 238 22L 238 52C 238 52 238 64 226 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-tx_golangin_zn6oj21yt8e8f-fill" data-item-order="0" transform="translate(200, 38)"><g id="tx_golangin_zn6oj21yt8e8f-fill" stroke="none" fill="#f4f4f4"><g><text style="font: bold 25px Roboto, sans-serif; white-space: pre;" font-weight="bold" font-size="25px" font-family="Roboto, sans-serif"><tspan x="16.02" y="42.5" dominant-baseline="ideographic">Golang Installation and Management in 2025</tspan></text></g></g></g><g id="g-root-cu_deu7qm1yt8cum-fill" data-item-order="0" transform="translate(482, 188)"></g><g id="g-root-tx_multimod_1d30ii61yt6yo6-fill" data-item-order="0" transform="translate(110, 224)"><g id="tx_multimod_1d30ii61yt6yo6-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="14.26" y="33.5" dominant-baseline="ideographic">Multi-Module Workspaces</tspan></text></g></g></g><g id="g-root-cu_1q9h86m1yt8dfo-fill" data-item-order="0" transform="translate(530, 215)"></g><g id="g-root-cu_1q9h86m1yt8dfr-fill" data-item-order="0" transform="translate(530, 215)"></g><g id="g-root-tx_vscodeco_147di9a1yt6zgv-fill" data-item-order="0" transform="translate(554, 227)"><g id="tx_vscodeco_147di9a1yt6zgv-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="17.61" y="33.5" dominant-baseline="ideographic">VS Code Configuration</tspan></text></g></g></g><g id="g-root-cu_1upaqb21yt8cne-fill" data-item-order="0" transform="translate(356, 176)"></g><g id="g-root-tx_vimneovi_18n70dq1yt6zgg-fill" data-item-order="0" transform="translate(554, 263)"><g id="tx_vimneovi_18n70dq1yt6zgg-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="16.07" y="33.5" dominant-baseline="ideographic">Vim/Neovim Setup</tspan></text></g></g></g><g id="g-root-cu_8z0pm61yt8dn0-fill" data-item-order="0" transform="translate(314, 299)"></g><g id="g-root-cu_1upaqb21yt8cnb-fill" data-item-order="0" transform="translate(356, 176)"></g><g id="g-root-tx_updating_mgpyum1yt6yoc-fill" data-item-order="0" transform="translate(74, 338)"><g id="tx_updating_mgpyum1yt6yoc-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="15.33" y="33.5" dominant-baseline="ideographic">Updating System Go</tspan></text></g></g></g><g id="g-root-cu_1ltnq261yt8e88-fill" data-item-order="0" transform="translate(272, 326)"></g><g id="g-root-cu_1hegp0u1yt8bur-fill" data-item-order="0" transform="translate(272, 326)"></g><g id="g-root-cu_1hegp0u1yt8but-fill" data-item-order="0" transform="translate(272, 326)"></g><g id="g-root-cu_1hegp0u1yt8buv-fill" data-item-order="0" transform="translate(272, 326)"></g><g id="g-root-cu_406ge1yt8c22-fill" data-item-order="0" transform="translate(530, 737)"></g><g id="g-root-cu_8z0pm61yt8dmx-fill" data-item-order="0" transform="translate(542, 338)"></g><g id="g-root-cu_1upaqb21yt8cn9-fill" data-item-order="0" transform="translate(530, 737)"></g><g id="g-root-tx_updating_mgpyum1yt6yod-fill" data-item-order="0" transform="translate(98, 374)"><g id="tx_updating_mgpyum1yt6yod-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="14.88" y="33.5" dominant-baseline="ideographic">Updating Mise Go</tspan></text></g></g></g><g id="g-root-cu_1q9h86m1yt8dft-fill" data-item-order="0" transform="translate(614, 365)"></g><g id="g-root-cu_1ltnq261yt8e84-fill" data-item-order="0" transform="translate(614, 365)"></g><g id="g-root-cu_1ltnq261yt8e86-fill" data-item-order="0" transform="translate(614, 365)"></g><g id="g-root-tx_environm_1d30ii61yt6yo5-fill" data-item-order="0" transform="translate(146, 188)"><g id="tx_environm_1d30ii61yt6yo5-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="12.3" y="33.5" dominant-baseline="ideographic">Environment Variables</tspan></text></g></g></g><g id="g-root-tx_devconta_zs6h7y1yt6x3d-fill" data-item-order="0" transform="translate(638, 377)"><g id="tx_devconta_zs6h7y1yt6x3d-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="12.14" y="33.5" dominant-baseline="ideographic">DevContainer Setup</tspan></text></g></g></g><g id="g-root-tx_updating_i0wgq61yt6zgm-fill" data-item-order="0" transform="translate(122, 410)"><g id="tx_updating_i0wgq61yt6zgm-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="15.21" y="33.5" dominant-baseline="ideographic">Updating Tools</tspan></text></g></g></g><g id="g-root-tx_multista_vccz3i1yt6xvm-fill" data-item-order="0" transform="translate(638, 413)"><g id="tx_multista_vccz3i1yt6xvm-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.4" y="33.5" dominant-baseline="ideographic">Multi-Stage Builds</tspan></text></g></g></g><g id="g-root-tx_updating_i0wgq61yt6zgn-fill" data-item-order="0" transform="translate(50, 446)"><g id="tx_updating_i0wgq61yt6zgn-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="12.6" y="33.5" dominant-baseline="ideographic">Updating Dependencies</tspan></text></g></g></g><g id="g-root-tx_tooldepe_1hiu0mm1yt6xvv-fill" data-item-order="0" transform="translate(554, 749)"><g id="tx_tooldepe_1hiu0mm1yt6xvv-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="15.3" y="33.5" dominant-baseline="ideographic">Tool Dependencies</tspan></text></g></g></g><g id="g-root-tx_hotreloa_vccz3i1yt6xvn-fill" data-item-order="0" transform="translate(638, 449)"><g id="tx_hotreloa_vccz3i1yt6xvn-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="12.88" y="33.5" dominant-baseline="ideographic">Hot-Reloading</tspan></text></g></g></g><g id="g-root-tx_systempa_1uto1wu1yt6zgp-fill" data-item-order="0" transform="translate(98, 788)"><g id="tx_systempa_1uto1wu1yt6zgp-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="14.91" y="33.5" dominant-baseline="ideographic">System Package Managers</tspan></text></g></g></g><g id="g-root-cu_deu7qm1yt8cuj-fill" data-item-order="0" transform="translate(398, 149)"></g><g id="g-root-cu_4jtoku1yt8b9p-fill" data-item-order="0" transform="translate(356, 776)"></g><g id="g-root-cu_4jtoku1yt8b9m-fill" data-item-order="0" transform="translate(314, 518)"></g><g id="g-root-cu_8z0pm61yt8dn3-fill" data-item-order="0" transform="translate(542, 518)"></g><g id="g-root-cu_406ge1yt8c20-fill" data-item-order="0" transform="translate(356, 776)"></g><g id="g-root-cu_1cyn6we1yt8cn5-fill" data-item-order="0" transform="translate(614, 551)"></g><g id="g-root-cu_1cyn6we1yt8cn8-fill" data-item-order="0" transform="translate(614, 551)"></g><g id="g-root-cu_1cyn6we1yt8cna-fill" data-item-order="0" transform="translate(614, 551)"></g><g id="g-root-cu_18itory1yt8dfk-fill" data-item-order="0" transform="translate(272, 566)"></g><g id="g-root-cu_18itory1yt8dfn-fill" data-item-order="0" transform="translate(272, 566)"></g><g id="g-root-tx_automati_dbpub21yt8bnk-fill" data-item-order="0" transform="translate(638, 563)"><g id="tx_automati_dbpub21yt8bnk-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.9" y="33.5" dominant-baseline="ideographic">Automatic Version Switching</tspan></text></g></g></g><g id="g-root-tx_sharedco_4g2u261yt8cgb-fill" data-item-order="0" transform="translate(50, 578)"><g id="tx_sharedco_4g2u261yt8cgb-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="15.83" y="33.5" dominant-baseline="ideographic">Shared Code Approach</tspan></text></g></g></g><g id="g-root-cu_18itory1yt8dfp-fill" data-item-order="0" transform="translate(272, 566)"></g><g id="g-root-cu_hunpv21yt8c25-fill" data-item-order="0" transform="translate(398, 584)"></g><g id="g-root-cu_deu7qm1yt8cug-fill" data-item-order="0" transform="translate(482, 584)"></g><g id="g-root-tx_manualve_dbpub21yt8bnl-fill" data-item-order="0" transform="translate(638, 599)"><g id="tx_manualve_dbpub21yt8bnl-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="14.83" y="33.5" dominant-baseline="ideographic">Manual Version Switching</tspan></text></g></g></g><g id="g-root-tx_multimod_9bxq1yt8d8k-fill" data-item-order="0" transform="translate(38, 614)"><g id="tx_multimod_9bxq1yt8d8k-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="17.48" y="33.5" dominant-baseline="ideographic">Multi-Module Monorepo</tspan></text></g></g></g><g id="g-root-tx_multienv_9bxq1yt8d8l-fill" data-item-order="0" transform="translate(26, 650)"><g id="tx_multienv_9bxq1yt8d8l-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="12.59" y="33.5" dominant-baseline="ideographic">Multi-Environment Docker-</tspan><tspan x="87.23" y="57.5" dominant-baseline="ideographic">Compose</tspan></text></g></g></g><g id="g-root-tx_vscodein_4g2u261yt8cga-fill" data-item-order="0" transform="translate(638, 635)"><g id="tx_vscodein_4g2u261yt8cga-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="17.59" y="33.5" dominant-baseline="ideographic">VS Code Integration</tspan></text></g></g></g><g id="g-root-tx_vulnerab_1hiu0mm1yt6xvw-fill" data-item-order="0" transform="translate(554, 785)"><g id="tx_vulnerab_1hiu0mm1yt6xvw-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.75" y="33.5" dominant-baseline="ideographic">Vulnerability Scanning</tspan></text></g></g></g><g id="g-root-tx_versionm_1qeh0vi1yt6x36-fill" data-item-order="0" transform="translate(182, 824)"><g id="tx_versionm_1qeh0vi1yt6x36-fill" stroke="none" fill="#f4f4f4"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.26" y="33.5" dominant-baseline="ideographic">Version Managers</tspan></text></g></g></g><g id="g-root-ic_code_mg3hri1yszxmv-fill" data-item-order="1000000000" transform="translate(518, 173)"></g><g id="g-root-tx_ideanded_qvwzvy1yszwum-fill" data-item-order="1000000000" transform="translate(554, 176)"><g id="tx_ideanded_qvwzvy1yszwum-fill" stroke="none" fill="#4f91fc"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="15.42" y="33.5" dominant-baseline="ideographic">IDE and Editor Setup</tspan></text></g></g></g><g id="g-root-tx_maintena_1lrsasu1yt8dmv-fill" data-item-order="1000000000" transform="translate(26, 287)"><g id="tx_maintena_1lrsasu1yt8dmv-fill" stroke="none" fill="#43dd93"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.8" y="33.5" dominant-baseline="ideographic">Maintenance and Updates</tspan></text></g></g></g><g id="g-root-ic_up_1hcl9ri1yt8b9c-fill" data-item-order="1000000000" transform="translate(272, 284)"></g><g id="g-root-ic_dock_1uux0321yszxfx-fill" data-item-order="1000000000" transform="translate(602, 323)"></g><g id="g-root-tx_containe_4pfycu1yszwuc-fill" data-item-order="1000000000" transform="translate(638, 326)"><g id="tx_containe_4pfycu1yszwuc-fill" stroke="none" fill="#fb6762"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="12.43" y="33.5" dominant-baseline="ideographic">Container Integration</tspan></text></g></g></g><g id="g-root-ic_mana_1cxe5ke1ytdxqn-fill" data-item-order="1000000000" transform="translate(428, 410)"></g><g id="g-root-tx_golangin_1q886um1ytdzbi-fill" data-item-order="1000000000" transform="translate(386, 464)"><g id="tx_golangin_1q886um1ytdzbi-fill" stroke="none" fill="#b7b7b7"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="44.48" y="33.5" dominant-baseline="ideographic">Golang </tspan><tspan x="26.65" y="57.5" dominant-baseline="ideographic">Installation </tspan><tspan x="59.4" y="81.5" dominant-baseline="ideographic">and </tspan><tspan x="17.08" y="105.5" dominant-baseline="ideographic">Management</tspan></text></g></g></g><g id="g-root-tx_advanced_1414re61yt8cua-fill" data-item-order="1000000000" transform="translate(50, 506)"><g id="tx_advanced_1414re61yt8cua-fill" stroke="none" fill="#cb68f9"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="16.3" y="33.5" dominant-baseline="ideographic">Advanced Patterns for </tspan><tspan x="53.22" y="57.5" dominant-baseline="ideographic">Microservices</tspan></text></g></g></g><g id="g-root-ic_micr_v5hr5a1yt8dmz-fill" data-item-order="1000000000" transform="translate(272, 515)"></g><g id="g-root-ic_exch_zp23se1yt5iix-fill" data-item-order="1000000000" transform="translate(602, 509)"></g><g id="g-root-tx_versions_18k2my61yt5kw0-fill" data-item-order="1000000000" transform="translate(638, 512)"><g id="tx_versions_18k2my61yt5kw0-fill" stroke="none" fill="#f366bb"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="14.39" y="33.5" dominant-baseline="ideographic">Version Switching</tspan></text></g></g></g><g id="g-root-ic_stud_24r721yt8c91-fill" data-item-order="1000000000" transform="translate(356, 134)"></g><g id="g-root-ic_mana_14303hq1yti5mr-fill" data-item-order="1000000000" transform="translate(518, 695)"></g><g id="g-root-tx_dependen_18i74j21yti80a-fill" data-item-order="1000000000" transform="translate(554, 698)"><g id="tx_dependen_18i74j21yti80a-fill" stroke="none" fill="#cb68f9"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.87" y="33.5" dominant-baseline="ideographic">Dependency Management</tspan></text></g></g></g><g id="g-root-tx_workspac_4hy9bi1yt8bgs-fill" data-item-order="1000000000" transform="translate(122, 137)"><g id="tx_workspac_4hy9bi1yt8bgs-fill" stroke="none" fill="#8769fd"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="11.92" y="33.5" dominant-baseline="ideographic">Workspace Configuration</tspan></text></g></g></g><g id="g-root-tx_installa_qofaum1yt8c8x-fill" data-item-order="1000000000" transform="translate(170, 737)"><g id="tx_installa_qofaum1yt8c8x-fill" stroke="none" fill="#f79438"><g><text style="font: 20px Roboto, sans-serif; white-space: pre;" font-size="20px" font-family="Roboto, sans-serif"><tspan x="13.59" y="33.5" dominant-baseline="ideographic">Installation Options</tspan></text></g></g></g><g id="g-root-ic_gola_hssalq1yt8d1m-fill" data-item-order="1000000000" transform="translate(356, 734)"></g><g id="g-root-ro_1hd7nou1ytdxq8-stroke" data-item-order="-35640" transform="translate(362, 386)"><g id="ro_1hd7nou1ytdxq8-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#f4f4f4" stroke-width="2"><g><path d="M 34 10L 166 10C 166 10 190 10 190 34L 190 184C 190 184 190 208 166 208L 34 208C 34 208 10 208 10 184L 10 34C 10 34 10 10 34 10"></path></g></g></g><g id="g-root-ro_qqaq3y1yt8b9g-stroke" data-item-order="-19872" transform="translate(38, 494)"><g id="ro_qqaq3y1yt8b9g-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#cb68f9" stroke-width="2"><g><path d="M 22 10L 274 10C 274 10 286 10 286 22L 286 70C 286 70 286 82 274 82L 22 82C 22 82 10 82 10 70L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_14303hq1yti5ms-stroke" data-item-order="-16200" transform="translate(506, 683)"><g id="ro_14303hq1yti5ms-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#cb68f9" stroke-width="2"><g><path d="M 22 10L 298 10C 298 10 310 10 310 22L 310 52C 310 52 310 64 298 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_1hcl9ri1yt8b9d-stroke" data-item-order="-16200" transform="translate(14, 272)"><g id="ro_1hcl9ri1yt8b9d-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#43dd93" stroke-width="2"><g><path d="M 22 10L 298 10C 298 10 310 10 310 22L 310 52C 310 52 310 64 298 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_1q7lsxa1yt8cum-stroke" data-item-order="-15552" transform="translate(110, 122)"><g id="ro_1q7lsxa1yt8cum-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#8769fd" stroke-width="2"><g><path d="M 22 10L 286 10C 286 10 298 10 298 22L 298 52C 298 52 298 64 286 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_mg3hri1yszxmw-stroke" data-item-order="-13608" transform="translate(506, 161)"><g id="ro_mg3hri1yszxmw-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#4f91fc" stroke-width="2"><g><path d="M 22 10L 250 10C 250 10 262 10 262 22L 262 52C 262 52 262 64 250 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_1uux0321yszxfy-stroke" data-item-order="-13608" transform="translate(590, 311)"><g id="ro_1uux0321yszxfy-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#fb6762" stroke-width="2"><g><path d="M 22 10L 250 10C 250 10 262 10 262 22L 262 52C 262 52 262 64 250 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_hssalq1yt8d1n-stroke" data-item-order="-12960" transform="translate(158, 722)"><g id="ro_hssalq1yt8d1n-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#f79438" stroke-width="2"><g><path d="M 22 10L 238 10C 238 10 250 10 250 22L 250 52C 250 52 250 64 238 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-ro_v98lny1yt5jb6-stroke" data-item-order="-12312" transform="translate(590, 497)"><g id="ro_v98lny1yt5jb6-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#f366bb" stroke-width="2"><g><path d="M 22 10L 226 10C 226 10 238 10 238 22L 238 52C 238 52 238 64 226 64L 22 64C 22 64 10 64 10 52L 10 22C 10 22 10 10 22 10"></path></g></g></g><g id="g-root-tx_golangin_zn6oj21yt8e8f-stroke" data-item-order="0" transform="translate(200, 38)"></g><g id="g-root-cu_deu7qm1yt8cum-stroke" data-item-order="0" transform="translate(482, 188)"><g id="cu_deu7qm1yt8cum-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 208L 10 183.3L 10 30.9C 10 19.357248 19.357248 10 30.899998 10L 31 10L 34 10"></path></g></g></g><g id="g-root-tx_multimod_1d30ii61yt6yo6-stroke" data-item-order="0" transform="translate(110, 224)"></g><g id="g-root-cu_1q9h86m1yt8dfo-stroke" data-item-order="0" transform="translate(530, 215)"><g id="cu_1q9h86m1yt8dfo-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 22L 10 34L 19 34L 28 34"></path></g></g></g><g id="g-root-cu_1q9h86m1yt8dfr-stroke" data-item-order="0" transform="translate(530, 215)"><g id="cu_1q9h86m1yt8dfr-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 17.5L 10 58C 10.000002 64.627417 15.372585 70 22.000002 69.999999L 22.1 70L 28 70"></path></g></g></g><g id="g-root-tx_vscodeco_147di9a1yt6zgv-stroke" data-item-order="0" transform="translate(554, 227)"></g><g id="g-root-cu_1upaqb21yt8cne-stroke" data-item-order="0" transform="translate(356, 176)"><g id="cu_1upaqb21yt8cne-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 17.5L 28 58C 27.999999 64.627415 22.627416 69.999998 16 69.999998L 15.9 70L 10 70"></path></g></g></g><g id="g-root-tx_vimneovi_18n70dq1yt6zgg-stroke" data-item-order="0" transform="translate(554, 263)"></g><g id="g-root-cu_8z0pm61yt8dn0-stroke" data-item-order="0" transform="translate(314, 299)"><g id="cu_8z0pm61yt8dn0-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 58 163L 55 163L 54.9 163C 43.357248 163.000001 33.999999 153.642752 33.999999 142.100001L 34 142L 34 30.9C 33.999998 19.357248 24.64275 10 13.1 10L 13 10L 10 10"></path></g></g></g><g id="g-root-cu_1upaqb21yt8cnb-stroke" data-item-order="0" transform="translate(356, 176)"><g id="cu_1upaqb21yt8cnb-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 22L 28 34L 19 34L 10 34"></path></g></g></g><g id="g-root-tx_updating_mgpyum1yt6yoc-stroke" data-item-order="0" transform="translate(74, 338)"></g><g id="g-root-cu_1ltnq261yt8e88-stroke" data-item-order="0" transform="translate(272, 326)"><g id="cu_1ltnq261yt8e88-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 22L 28 34L 19 34L 10 34"></path></g></g></g><g id="g-root-cu_1hegp0u1yt8bur-stroke" data-item-order="0" transform="translate(272, 326)"><g id="cu_1hegp0u1yt8bur-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 40L 28 70L 19 70L 10 70"></path></g></g></g><g id="g-root-cu_1hegp0u1yt8but-stroke" data-item-order="0" transform="translate(272, 326)"><g id="cu_1hegp0u1yt8but-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 58L 28 106L 19 106L 10 106"></path></g></g></g><g id="g-root-cu_1hegp0u1yt8buv-stroke" data-item-order="0" transform="translate(272, 326)"><g id="cu_1hegp0u1yt8buv-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 26.5L 28 130C 28.000005 136.627421 22.627422 142.000005 16.000005 142.000005L 15.9 142L 10 142"></path></g></g></g><g id="g-root-cu_406ge1yt8c22-stroke" data-item-order="0" transform="translate(530, 737)"><g id="cu_406ge1yt8c22-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 22L 10 34L 19 34L 28 34"></path></g></g></g><g id="g-root-cu_8z0pm61yt8dmx-stroke" data-item-order="0" transform="translate(542, 338)"><g id="cu_8z0pm61yt8dmx-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 124L 13 124L 13.1 124C 24.64275 123.999991 33.999998 114.642743 33.999998 103.099993L 34 103L 34 30.9C 33.999999 19.357249 43.357248 10.000001 54.899999 10.000002L 55 10L 58 10"></path></g></g></g><g id="g-root-cu_1upaqb21yt8cn9-stroke" data-item-order="0" transform="translate(530, 737)"><g id="cu_1upaqb21yt8cn9-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 17.5L 10 58C 10.000002 64.627417 15.372585 70 22.000002 69.999999L 22.1 70L 28 70"></path></g></g></g><g id="g-root-tx_updating_mgpyum1yt6yod-stroke" data-item-order="0" transform="translate(98, 374)"></g><g id="g-root-cu_1q9h86m1yt8dft-stroke" data-item-order="0" transform="translate(614, 365)"><g id="cu_1q9h86m1yt8dft-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 22L 10 34L 19 34L 28 34"></path></g></g></g><g id="g-root-cu_1ltnq261yt8e84-stroke" data-item-order="0" transform="translate(614, 365)"><g id="cu_1ltnq261yt8e84-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 40L 10 70L 19 70L 28 70"></path></g></g></g><g id="g-root-cu_1ltnq261yt8e86-stroke" data-item-order="0" transform="translate(614, 365)"><g id="cu_1ltnq261yt8e86-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 22L 10 94C 10.000004 100.627423 15.372587 106.000006 22.000005 106.000005L 22.1 106L 28 106"></path></g></g></g><g id="g-root-tx_environm_1d30ii61yt6yo5-stroke" data-item-order="0" transform="translate(146, 188)"></g><g id="g-root-tx_devconta_zs6h7y1yt6x3d-stroke" data-item-order="0" transform="translate(638, 377)"></g><g id="g-root-tx_updating_i0wgq61yt6zgm-stroke" data-item-order="0" transform="translate(122, 410)"></g><g id="g-root-tx_multista_vccz3i1yt6xvm-stroke" data-item-order="0" transform="translate(638, 413)"></g><g id="g-root-tx_updating_i0wgq61yt6zgn-stroke" data-item-order="0" transform="translate(50, 446)"></g><g id="g-root-tx_tooldepe_1hiu0mm1yt6xvv-stroke" data-item-order="0" transform="translate(554, 749)"></g><g id="g-root-tx_hotreloa_vccz3i1yt6xvn-stroke" data-item-order="0" transform="translate(638, 449)"></g><g id="g-root-tx_systempa_1uto1wu1yt6zgp-stroke" data-item-order="0" transform="translate(98, 788)"></g><g id="g-root-cu_deu7qm1yt8cuj-stroke" data-item-order="0" transform="translate(398, 149)"><g id="cu_deu7qm1yt8cuj-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 34 247L 34 217.4L 34 30.9C 33.999998 19.357248 24.64275 10 13.1 10L 13 10L 10 10"></path></g></g></g><g id="g-root-cu_4jtoku1yt8b9p-stroke" data-item-order="0" transform="translate(356, 776)"><g id="cu_4jtoku1yt8b9p-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 22L 28 34L 19 34L 10 34"></path></g></g></g><g id="g-root-cu_4jtoku1yt8b9m-stroke" data-item-order="0" transform="translate(314, 518)"><g id="cu_4jtoku1yt8b9m-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 58 10L 55 10L 54.9 10C 51.573798 9.984822 47.894627 10.491129 44.000001 11.500002C 41.64547 12.146995 38.122242 13.732448 34.000001 15.999999C 29.87776 18.26755 26.354532 19.853003 24.000001 20.499999C 20.105375 21.508873 16.426204 22.015181 13.1 22.000001L 13 22L 10 22"></path></g></g></g><g id="g-root-cu_8z0pm61yt8dn3-stroke" data-item-order="0" transform="translate(542, 518)"><g id="cu_8z0pm61yt8dn3-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 13 10L 13.1 10C 16.311297 10.016369 19.867515 10.284763 23.700001 10.800001C 25.868292 11.054283 29.498118 11.829585 33.999999 13C 38.50188 14.170414 42.131706 14.945717 44.299999 15.2C 48.132487 15.71524 51.688705 15.983634 54.900002 16.000002L 55 16L 58 16"></path></g></g></g><g id="g-root-cu_406ge1yt8c20-stroke" data-item-order="0" transform="translate(356, 776)"><g id="cu_406ge1yt8c20-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 17.5L 28 58C 27.999999 64.627415 22.627416 69.999998 16 69.999998L 15.9 70L 10 70"></path></g></g></g><g id="g-root-cu_1cyn6we1yt8cn5-stroke" data-item-order="0" transform="translate(614, 551)"><g id="cu_1cyn6we1yt8cn5-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 22L 10 34L 19 34L 28 34"></path></g></g></g><g id="g-root-cu_1cyn6we1yt8cn8-stroke" data-item-order="0" transform="translate(614, 551)"><g id="cu_1cyn6we1yt8cn8-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 40L 10 70L 19 70L 28 70"></path></g></g></g><g id="g-root-cu_1cyn6we1yt8cna-stroke" data-item-order="0" transform="translate(614, 551)"><g id="cu_1cyn6we1yt8cna-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 22L 10 94C 10.000004 100.627423 15.372587 106.000006 22.000005 106.000005L 22.1 106L 28 106"></path></g></g></g><g id="g-root-cu_18itory1yt8dfk-stroke" data-item-order="0" transform="translate(272, 566)"><g id="cu_18itory1yt8dfk-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 22L 28 34L 19 34L 10 34"></path></g></g></g><g id="g-root-cu_18itory1yt8dfn-stroke" data-item-order="0" transform="translate(272, 566)"><g id="cu_18itory1yt8dfn-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 40L 28 70L 19 70L 10 70"></path></g></g></g><g id="g-root-tx_automati_dbpub21yt8bnk-stroke" data-item-order="0" transform="translate(638, 563)"></g><g id="g-root-tx_sharedco_4g2u261yt8cgb-stroke" data-item-order="0" transform="translate(50, 578)"></g><g id="g-root-cu_18itory1yt8dfp-stroke" data-item-order="0" transform="translate(272, 566)"><g id="cu_18itory1yt8dfp-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 28 10L 28 23.5L 28 106C 28.000002 112.627414 22.627419 117.999997 16.000002 117.999997L 15.9 118L 10 118"></path></g></g></g><g id="g-root-cu_hunpv21yt8c25-stroke" data-item-order="0" transform="translate(398, 584)"><g id="cu_hunpv21yt8c25-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 34 10L 34 30.6L 34 154.1C 34.000002 165.642753 24.642753 175.000003 13.100001 175.000002L 13 175L 10 175"></path></g></g></g><g id="g-root-cu_deu7qm1yt8cug-stroke" data-item-order="0" transform="translate(482, 584)"><g id="cu_deu7qm1yt8cug-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2" stroke-dasharray="5.0, 7.0"><g><path d="M 10 10L 10 25.8L 10 115.1C 10.000001 126.642752 19.357249 136.000001 30.900001 136.000001L 31 136L 34 136"></path></g></g></g><g id="g-root-tx_manualve_dbpub21yt8bnl-stroke" data-item-order="0" transform="translate(638, 599)"></g><g id="g-root-tx_multimod_9bxq1yt8d8k-stroke" data-item-order="0" transform="translate(38, 614)"></g><g id="g-root-tx_multienv_9bxq1yt8d8l-stroke" data-item-order="0" transform="translate(26, 650)"></g><g id="g-root-tx_vscodein_4g2u261yt8cga-stroke" data-item-order="0" transform="translate(638, 635)"></g><g id="g-root-tx_vulnerab_1hiu0mm1yt6xvw-stroke" data-item-order="0" transform="translate(554, 785)"></g><g id="g-root-tx_versionm_1qeh0vi1yt6x36-stroke" data-item-order="0" transform="translate(182, 824)"></g><g id="g-root-ic_code_mg3hri1yszxmv-stroke" data-item-order="1000000000" transform="translate(518, 173)"><g id="ic_code_mg3hri1yszxmv-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#4f91fc" stroke-width="2"><g><path d="M 21.437525 15.109387L 21.437525 12.234387C 21.437525 11.484387 21.937525 10.984383 22.6875 10.984383L 34.6875 10.984383C 34.9375 10.984383 35.3125 11.109383 35.4375 11.234383L 38.4375 13.734387C 38.6875 13.984387 38.9375 14.359387 38.9375 14.734387L 38.9375 30.359375C 38.9375 31.109375 38.4375 31.609375 37.6875 31.609375L 28.3125 31.609375M 10 10M 26.4375 16.234364L 24.5625 18.109364L 26.4375 19.984364M 10 10M 33.9375 16.234364L 35.8125 18.109364L 33.9375 19.984364M 10 10M 28.9375 20.6094L 31.4375 14.9844M 26.9375 39.015625C 25.8125 35.765625 22.6875 33.390625 19.062475 33.390625C 15.437475 33.390625 12.187475 35.765625 11.06247 39.015625M 18.9375 22.140614L 18.9375 18.390614M 12.062375 25.765625L 25.812376 25.765625M 13.812375 27.140625C 13.937375 29.890625 16.187376 32.140625 18.937374 32.140625C 21.812374 32.140625 24.062374 29.890625 24.062374 27.015625L 24.062374 24.765625C 24.062374 21.890614 21.812374 19.640614 18.937374 19.640614C 16.187376 19.640614 13.937375 21.890614 13.812375 24.640625L 13.812375 27.140625Z"></path></g></g></g><g id="g-root-tx_ideanded_qvwzvy1yszwum-stroke" data-item-order="1000000000" transform="translate(554, 176)"></g><g id="g-root-tx_maintena_1lrsasu1yt8dmv-stroke" data-item-order="1000000000" transform="translate(26, 287)"></g><g id="g-root-ic_up_1hcl9ri1yt8b9c-stroke" data-item-order="1000000000" transform="translate(272, 284)"><g id="ic_up_1hcl9ri1yt8b9c-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#43dd93" stroke-width="2"><g><path d="M 10.9375 39.0625C 12.8042 39.0625 14.670913 39.0625 16.537613 37.1875C 18.404312 39.0625 20.271013 39.0625 20.768799 39.0625C 21.266588 39.0625 23.133251 39.0625 25 37.1875C 26.866749 39.0625 28.733376 39.0625 29.231251 39.0625C 29.729 39.0625 31.595627 39.0625 33.462376 37.1875C 35.329124 39.0625 37.195747 39.0625 39.0625 39.0625M 35.1875 15.494762C 37.48225 15.494762 39.342625 14.474587 39.342625 13.216138C 39.342625 11.957675 37.48225 10.9375 35.1875 10.9375C 32.892624 10.9375 31.032373 11.957675 31.032373 13.216138C 31.032373 14.474587 32.892624 15.494762 35.1875 15.494762ZM 31.032373 13.216063L 31.032373 19.381775C 31.032373 20.588114 32.908875 21.660412 35.1875 21.660412C 37.466125 21.660412 39.342625 20.588114 39.342625 19.381775L 39.342625 13.216063M 12.870325 34.249874C 12.870325 33.835751 12.732275 33.421627 12.3181 33.007374L 11.489738 32.179001C 10.937504 31.764874 10.79944 30.936501 11.075558 30.384251C 11.351675 29.694 11.903913 29.417875 12.594213 29.417875L 13.698688 29.417875C 14.112863 29.417875 14.665088 29.279875 14.941213 29.00375C 15.217325 28.727625 15.355388 28.320251 15.355388 27.761126L 15.355388 26.65675C 15.355388 25.966375 15.769563 25.276125 16.3218 25.138C 17.012087 24.862 17.702387 25 18.116562 25.55225L 18.944925 26.380625C 19.221037 26.65675 19.635212 26.932875 20.18745 26.932875C 20.739674 26.932875 21.015787 26.79475 21.429962 26.380625L 22.258324 25.55225C 22.672499 25 23.500875 24.862 24.053125 25.138C 24.743374 25.414125 25.019501 25.966375 25.019501 26.65675L 25.019501 27.761126C 25.019501 28.175375 25.157625 28.727625 25.433624 29.00375C 25.709749 29.279875 26.261999 29.556 26.67625 29.417875L 27.780624 29.417875C 28.471001 29.417875 29.161251 29.831999 29.299376 30.384251C 29.5755 31.074623 29.437374 31.764874 28.885124 32.179001L 28.056751 33.007374C 27.780624 33.283501 27.504499 33.69775 27.504499 34.249874M 17.150112 34.249874C 17.150112 32.593124 18.530712 31.074501 20.325474 31.074501C 21.982176 31.074501 23.362749 32.455002 23.362749 34.249874M 35.1875 24.624874L 35.1875 33.749878M 10 10M 32.6875 27.125L 35.1875 24.625L 37.6875 27.125M 39.342625 16.274788C 39.342625 17.559887 37.482376 18.601675 35.1875 18.601675C 32.892624 18.601675 31.032373 17.559887 31.032373 16.274788"></path></g></g></g><g id="g-root-ic_dock_1uux0321yszxfx-stroke" data-item-order="1000000000" transform="translate(602, 323)"><g id="ic_dock_1uux0321yszxfx-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#fb6762" stroke-width="2"><g><path d="M 11.25 26.875C 11.07959 26.874849 10.916507 26.94429 10.798512 27.06724C 10.680517 27.190191 10.617843 27.355991 10.625 27.526249C 10.89375 33.7425 14.905 38.125 21.24375 38.125C 27.80125 38.125 34.993752 32.80875 34.993752 26.25C 35.820766 26.601425 36.755402 26.599987 37.581329 26.246017C 38.407257 25.892048 39.052879 25.216234 39.368752 24.375002C 39.052761 23.535349 38.40818 22.860771 37.583759 22.506941C 36.759335 22.153112 35.826309 22.150608 35.000004 22.500002C 35.625 19.375 31.875 18.125 31.875 18.125C 31.875 18.125 30 21.25 31.875 23.75C 31.875 23.75 32.5 26.875 30 26.875ZM 18.11875 31.25C 18.11875 31.595177 18.398573 31.875 18.74375 31.875C 19.088928 31.875 19.36875 31.595177 19.36875 31.25C 19.36875 30.904823 19.088928 30.625 18.74375 30.625C 18.398573 30.625 18.11875 30.904823 18.11875 31.25M 13.11875 21.875L 18.11875 21.875L 18.11875 26.875L 13.11875 26.875ZM 18.11875 21.875L 23.11875 21.875L 23.11875 26.875L 18.11875 26.875ZM 23.11875 21.875L 28.11875 21.875L 28.11875 26.875L 23.11875 26.875ZM 18.11875 16.875L 23.11875 16.875L 23.11875 21.875L 18.11875 21.875ZM 18.11875 11.875L 23.11875 11.875L 23.11875 16.875L 18.11875 16.875ZM 23.11875 16.875L 28.11875 16.875L 28.11875 21.875L 23.11875 21.875Z"></path></g></g></g><g id="g-root-tx_containe_4pfycu1yszwuc-stroke" data-item-order="1000000000" transform="translate(638, 326)"></g><g id="g-root-ic_mana_1cxe5ke1ytdxqn-stroke" data-item-order="1000000000" transform="translate(428, 410)"><g id="ic_mana_1cxe5ke1ytdxqn-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#b7b7b7" stroke-width="2"><g><path d="M 10 10M 34 28L 43 19M 34 40L 25 49M 57 34C 56.999382 34.636688 56.747879 35.247482 56.300003 35.700001L 35.700001 56.299999C 34.757553 57.230236 33.242451 57.230236 32.300003 56.300003L 11.7 35.700001C 10.769766 34.757553 10.769766 33.242451 11.7 32.300003L 32.299999 11.7C 33.242451 10.769766 34.757553 10.769766 35.700001 11.7L 56.299999 32.299999C 56.747879 32.752522 56.999382 33.363316 57.000004 34ZM 28.004 34L 34 28.004L 39.996002 34L 34 39.996002Z"></path></g></g></g><g id="g-root-tx_golangin_1q886um1ytdzbi-stroke" data-item-order="1000000000" transform="translate(386, 464)"></g><g id="g-root-tx_advanced_1414re61yt8cua-stroke" data-item-order="1000000000" transform="translate(50, 506)"></g><g id="g-root-ic_micr_v5hr5a1yt8dmz-stroke" data-item-order="1000000000" transform="translate(272, 515)"><g id="ic_micr_v5hr5a1yt8dmz-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#cb68f9" stroke-width="2"><g><path d="M 16.875 13.125L 21.875 13.125M 28.125 13.125L 32.5 13.125M 21.5625 13.125L 28.4375 13.125L 28.4375 36.875L 21.5625 36.875ZM 39.375 36.875L 32.5 36.875L 32.5 13.125L 39.375 20L 39.375 36.875ZM 10.625 13.125L 17.5 13.125L 17.5 36.875L 10.625 36.875ZM 17.5 20.625L 21.5625 20.625M 28.4375 20.625L 32.5 20.625"></path></g></g></g><g id="g-root-ic_exch_zp23se1yt5iix-stroke" data-item-order="1000000000" transform="translate(602, 509)"><g id="ic_exch_zp23se1yt5iix-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#f366bb" stroke-width="2"><g><path d="M 15.625 20L 15.625 17.1875C 15.624667 15.943545 16.118937 14.7505 16.998896 13.871243C 17.878857 12.991987 19.072296 12.498672 20.31625 12.5L 22.5 12.5M 18.12875 17.5L 15.62875 20L 13.12875 17.5M 20.62875 10.625L 22.50375 12.5L 20.62875 14.375M 16.25 35.3125C 16.077412 35.3125 15.9375 35.452412 15.9375 35.625C 15.9375 35.797588 16.077412 35.9375 16.25 35.9375C 16.422588 35.9375 16.5625 35.797588 16.5625 35.625C 16.5625 35.452412 16.422588 35.3125 16.25 35.3125L 16.25 35.3125M 21.875 38.125C 21.875 38.815353 21.315357 39.375 20.625 39.375L 11.875 39.375C 11.184644 39.375 10.625 38.815353 10.625 38.125L 10.625 24.375C 10.625 23.684643 11.184644 23.125 11.875 23.125L 20.625 23.125C 21.315357 23.125 21.875 23.684643 21.875 24.375ZM 39.375 13.125C 39.375 14.505712 38.255714 15.625 36.875 15.625L 30.625 15.625C 29.244287 15.625 28.125 14.505712 28.125 13.125C 28.125 11.744288 29.244287 10.625 30.625 10.625L 36.875 10.625C 38.255714 10.625 39.375 11.744288 39.375 13.125ZM 31.5625 12.8125C 31.389912 12.8125 31.25 12.952411 31.25 13.125C 31.25 13.297589 31.389912 13.4375 31.5625 13.4375C 31.735088 13.4375 31.875 13.297589 31.875 13.125C 31.875 12.952411 31.735088 12.8125 31.5625 12.8125L 31.5625 12.8125M 39.375 18.125C 39.375 19.505713 38.255714 20.625 36.875 20.625L 30.625 20.625C 29.244287 20.625 28.125 19.505713 28.125 18.125C 28.125 16.744287 29.244287 15.625 30.625 15.625L 36.875 15.625C 38.255714 15.625 39.375 16.744287 39.375 18.125ZM 31.5625 17.8125C 31.389912 17.8125 31.25 17.952412 31.25 18.125C 31.25 18.297588 31.389912 18.4375 31.5625 18.4375C 31.735088 18.4375 31.875 18.297588 31.875 18.125C 31.875 17.952412 31.735088 17.8125 31.5625 17.8125L 31.5625 17.8125M 39.375 23.125C 39.375 24.505713 38.255714 25.625 36.875 25.625L 30.625 25.625C 29.244287 25.625 28.125 24.505713 28.125 23.125C 28.125 21.744287 29.244287 20.625 30.625 20.625L 36.875 20.625C 38.255714 20.625 39.375 21.744287 39.375 23.125ZM 31.5625 22.8125C 31.389912 22.8125 31.25 22.952412 31.25 23.125C 31.25 23.297588 31.389912 23.4375 31.5625 23.4375C 31.735088 23.4375 31.875 23.297588 31.875 23.125C 31.875 22.952412 31.735088 22.8125 31.5625 22.8125L 31.5625 22.8125"></path></g></g></g><g id="g-root-tx_versions_18k2my61yt5kw0-stroke" data-item-order="1000000000" transform="translate(638, 512)"></g><g id="g-root-ic_stud_24r721yt8c91-stroke" data-item-order="1000000000" transform="translate(356, 134)"><g id="ic_stud_24r721yt8c91-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#8769fd" stroke-width="2"><g><path d="M 22.949999 39.275002C 21.060961 39.163151 19.5863 37.598598 19.5863 35.706249C 19.5863 33.8139 21.060961 32.249348 22.949999 32.137497L 35.799999 32.137497C 37.125393 32.059025 38.385109 32.721542 39.071507 33.858067C 39.757896 34.994595 39.757896 36.417904 39.071507 37.554432C 38.385109 38.690956 37.125393 39.353474 35.799999 39.275002ZM 32.225002 35.712502C 32.224998 37.686916 33.825581 39.287498 35.799999 39.287498C 37.774418 39.287498 39.375 37.686916 39.375 35.712502C 39.375 33.738083 37.774418 32.137497 35.799999 32.137497C 33.825581 32.137497 32.224998 33.738083 32.224998 35.712502M 22.949999 17.862499C 21.060961 17.750652 19.5863 16.186098 19.5863 14.29375C 19.5863 12.401402 21.060961 10.836847 22.949999 10.725L 35.799999 10.725C 37.125393 10.646525 38.385109 11.309042 39.071507 12.445568C 39.757896 13.582094 39.757896 15.005405 39.071507 16.141932C 38.385109 17.278458 37.125393 17.940975 35.799999 17.862499ZM 32.225002 14.2875C 32.224998 16.261917 33.825581 17.862499 35.799999 17.862499C 37.774418 17.862499 39.375 16.261917 39.375 14.287499C 39.375 12.313082 37.774418 10.7125 35.799999 10.7125C 33.825581 10.7125 32.224998 12.313082 32.224998 14.287499M 14.2 28.574999C 12.225582 28.574999 10.625 26.974417 10.625 25C 10.625 23.025581 12.225582 21.424999 14.2 21.424999L 27.050001 21.425001C 29.024418 21.424999 30.625 23.025581 30.625 25C 30.625 26.974417 29.024418 28.574999 27.049999 28.574999ZM 23.475 25C 23.475 26.974417 25.075581 28.574999 27.049999 28.574999C 29.024418 28.574999 30.625 26.974417 30.625 25C 30.625 23.025581 29.024418 21.424999 27.049999 21.424999C 25.075581 21.424999 23.475 23.025581 23.475 25"></path></g></g></g><g id="g-root-ic_mana_14303hq1yti5mr-stroke" data-item-order="1000000000" transform="translate(518, 695)"><g id="ic_mana_14303hq1yti5mr-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#cb68f9" stroke-width="2"><g><path d="M 22.5 36.875C 22.5 38.255714 23.619287 39.375 25 39.375C 26.380713 39.375 27.5 38.255714 27.5 36.875C 27.5 35.494286 26.380713 34.375 25 34.375C 23.619287 34.375 22.5 35.494286 22.5 36.875M 25 39.375C 23.992111 39.37077 23.085337 38.761719 22.700207 37.830303C 22.315077 36.898888 22.526924 35.827301 23.237499 35.112499L 35.112499 23.237499C 36.104401 22.388058 37.582985 22.445169 38.506409 23.368591C 39.429832 24.292015 39.486942 25.770599 38.637501 26.762501L 26.762501 38.637501C 26.295813 39.106983 25.661972 39.372208 25 39.375ZM 22.5 13.125C 22.5 14.505712 23.619287 15.625 25 15.625C 26.380713 15.625 27.5 14.505712 27.5 13.125C 27.5 11.744288 26.380713 10.625 25 10.625C 23.619287 10.625 22.5 11.744288 22.5 13.125M 22.5 25C 22.5 26.380713 23.619287 27.5 25 27.5C 26.380713 27.5 27.5 26.380713 27.5 25C 27.5 23.619287 26.380713 22.5 25 22.5C 23.619287 22.5 22.5 23.619287 22.5 25M 25 10.625C 26.007889 10.629231 26.914663 11.238282 27.299793 12.169697C 27.684923 13.101111 27.473076 14.1727 26.762501 14.8875L 14.8875 26.762501C 13.912406 27.731808 12.337594 27.731808 11.3625 26.762501C 10.393191 25.787407 10.393191 24.212593 11.3625 23.237499L 23.237499 11.3625C 23.704187 10.893015 24.338028 10.627791 25 10.625ZM 30.9375 16.5625C 31.945389 16.566732 32.852165 17.175783 33.237293 18.107197C 33.622425 19.038612 33.410576 20.110201 32.700001 20.825001L 20.825001 32.700001C 19.833099 33.549442 18.354515 33.492332 17.431091 32.568909C 16.507669 31.645487 16.450558 30.166901 17.299999 29.174999L 29.174999 17.299999C 29.641687 16.830515 30.275528 16.56529 30.9375 16.5625Z"></path></g></g></g><g id="g-root-tx_dependen_18i74j21yti80a-stroke" data-item-order="1000000000" transform="translate(554, 698)"></g><g id="g-root-tx_workspac_4hy9bi1yt8bgs-stroke" data-item-order="1000000000" transform="translate(122, 137)"></g><g id="g-root-tx_installa_qofaum1yt8c8x-stroke" data-item-order="1000000000" transform="translate(170, 737)"></g><g id="g-root-ic_gola_hssalq1yt8d1m-stroke" data-item-order="1000000000" transform="translate(356, 734)"><g id="ic_gola_hssalq1yt8d1m-stroke" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="4" stroke="#f79438" stroke-width="2"><g><path d="M 26.9625 21.35C 26.031693 20.083309 24.571074 19.313835 23 19.262501C 19.9168 19.199987 17.298981 21.508232 16.975 24.575001C 16.806221 26.003925 17.2444 27.438141 18.182947 28.528755C 19.121494 29.619371 20.47438 30.26642 21.9125 30.3125C 24.993151 30.374447 27.607094 28.064831 27.924999 24.999998L 23.950001 25M 30.02717 29.378012C 32.195419 31.385639 35.679539 31.148417 37.808834 28.848181C 39.938126 26.547947 39.906132 23.05591 37.737377 21.048832C 35.569126 19.041204 32.085007 19.278427 29.955715 21.578659C 27.82642 23.878895 27.858414 27.370934 30.02717 29.378012M 15.3125 21.224998L 12.075 21.224998M 15.05 23.462502L 10.625 23.462502M 14.9125 25.6875L 13.3875 25.6875"></path></g></g></g></g></g><path id="w18n70e61xzjd3d" d="M65.283 12.757a.35.35 0 0 0 .584.157l5.203-5.141-6.183 3.523.396 1.461zm-2.216-11.7a.35.35 0 0 0-.522.305v3.111l3.276-1.868-2.754-1.548zm3.728 2.105l-4.25 2.421v2.445l6.391-3.644-2.141-1.222zm4.708 3.303a.35.35 0 0 0 0-.609l-1.592-.9-7.365 4.199v1.782a.35.35 0 0 0 .523.305l8.435-4.777z M44.542 2.513c0-.433.355-.783.792-.783s.792.35.792.783-.355.783-.792.783-.792-.35-.792-.783zm59.171 0c0-.433.355-.783.792-.783s.792.35.792.783-.355.783-.792.783-.792-.35-.792-.783zm-85.951 7.636h-1.27v-.487c-.276.201-.864.609-1.881.609-1.202 0-2.274-.794-2.137-2.078.118-1.106 1.153-1.584 1.848-1.727l2.17-.345c0-.539-.29-.956-1.064-1.006s-1.21.305-1.571 1.017l-1.124-.605c1.218-2.631 5.029-1.764 5.029.414v4.207zm-1.27-2.86c.006.396-.062 1.112-.819 1.59-.587.37-1.841.299-1.903-.395-.049-.555.461-.791.906-.898l1.816-.297zm72.662 2.86h-1.27v-.487c-.276.201-.864.609-1.881.609-1.202 0-2.274-.794-2.137-2.078.118-1.106 1.153-1.584 1.848-1.727l2.17-.345c0-.539-.29-.956-1.064-1.006s-1.21.305-1.571 1.017l-1.124-.605c1.218-2.631 5.029-1.764 5.029.414v4.207zm-1.27-2.86c.006.396-.062 1.112-.82 1.59-.587.37-1.841.299-1.903-.395-.049-.555.461-.791.906-.898l1.816-.297zM99.096 10.149H97.85v-8.45h1.246v4.895l2.68-2.559h1.738l-2.633 2.535 2.715 3.578h-1.556l-2.077-2.707-.867.844v1.863zm6.053-6.114h-1.255v6.113h1.255V4.035zm-59.2 0h-1.255v6.113h1.255V4.035zm5.584 6.113V1.697h1.255v2.695c.361-.346 1-.485 1.47-.485 1.452 0 2.477 1.082 2.457 2.448v3.792h-1.27v-3.68c0-.408-.214-1.339-1.315-1.339-.968 0-1.342.756-1.342 1.339v3.681h-1.255zm-4.76-4.894V4.039h.621a.45.45 0 0 0 .45-.45v-.855h1.251v1.305h1.309v1.215h-1.309v3.109c0 .293.105.664.648.664.365 0 .531-.035.736-.07v1.137s-.361.113-.857.113c-1.398 0-1.777-1.051-1.777-1.788V5.254h-1.071zM36.528 4.039h-1.394l2.191 6.106h1.125l1.234-3.918 1.238 3.918h1.129l2.188-6.106h-1.383l-1.359 3.93-1.256-3.93h-1.124l-1.242 3.957-1.348-3.957zM26.212 7.141c-.02 1.566 1.187 3.129 3.223 3.129 1.566 0 2.383-.918 2.734-1.719L31.172 8c-.315.399-.801 1.094-1.738 1.094-1.145 0-1.825-.781-1.891-1.52h4.625c.074-.284.148-.995-.03-1.559-.336-1.064-1.221-2.102-2.839-2.102s-3.088 1.152-3.088 3.227zm1.363-.75h3.348c-.055-.43-.566-1.301-1.623-1.301a1.79 1.79 0 0 0-1.725 1.301zm-8.758.75c.038 1.758 1.277 3.133 3.145 3.133 1.074 0 1.723-.477 1.961-.672v.547h1.242V1.703h-1.258v2.888c-.414-.36-1.062-.68-1.93-.68-1.91 0-3.198 1.473-3.16 3.23zm1.309-.08c0 1.119.723 1.978 1.836 1.978a1.88 1.88 0 0 0 1.94-1.904c0-1.371-1.011-1.99-1.972-1.99s-1.805.798-1.805 1.916zm76.683-.028C96.771 5.275 95.532 3.9 93.664 3.9c-1.074 0-1.723.477-1.961.672v-.547h-1.242v8.22h1.258V9.583c.414.36 1.063.68 1.93.68 1.91 0 3.198-1.473 3.16-3.23zm-1.309.08c0-1.119-.723-1.978-1.836-1.978a1.88 1.88 0 0 0-1.94 1.904c0 1.371 1.011 1.99 1.972 1.99S95.5 8.231 95.5 7.113zM106.441 10.173V4.036h1.254v.382c.361-.346 1-.485 1.47-.485 1.452 0 2.477 1.082 2.457 2.448v3.792h-1.27V6.492c0-.408-.214-1.339-1.315-1.339-.969 0-1.342.756-1.342 1.339v3.681h-1.254zm-30.383-.021V1.824h1.084l4.215 5.777V1.824h1.32v8.328h-1.094l-4.207-5.796v5.796h-1.319zM5.24 10.149H4V2.377h1.014l2.664 3.597 2.654-3.592h1.03v7.766h-1.256V4.762L7.678 8.068 5.24 4.742v5.407z" transform="translate(800, 872)" fill="#ababab88" stroke="none"></path></svg>

<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

## 📑 Table of Contents

* [Bottom Line](#bottom-line)
* [Introduction: Why Go installation matters](#introduction-why-go-installation-matters)
* [Installation options](#installation-options)
* [Golang & mise installation](#golang--mise-installation)
  * [Step 1: Install Go with the system package manager](#step-1-install-go-with-the-system-package-manager)
  * [Step 2: Install mise for version management](#step-2-install-mise-for-version-management)
  * [Step 3: Configure project-specific versions](#step-3-configure-project-specific-versions)
* [Dependency management best practices](#dependency-management-best-practices)
  * [Tool dependencies (Go 1.24+)](#tool-dependencies-go-124)
  * [Vulnerability scanning with govulncheck](#vulnerability-scanning-with-govulncheck)
* [Go workspace configuration](#go-workspace-configuration)
  * [Essential environment variables](#essential-environment-variables)
  * [Multi-module workspaces with go.work](#multi-module-workspaces-with-gowork)
* [IDE and editor setup](#ide-and-editor-setup)
  * [VS Code configuration](#vs-code-configuration)
  * [Vim/Neovim + LazyVim setup](#vimneovim--lazyvim-setup)
* [Container integration](#container-integration)
  * [DevContainer setup](#devcontainer-setup)
  * [Multi-stage builds for production](#multi-stage-builds-for-production)
  * [Hot-reloading with Air](#hot-reloading-with-air)
* [Maintenance and updates](#maintenance-and-updates)
  * [Updating system Go](#updating-system-go)
  * [Updating mise Go version(s)](#updating-mise-go-versions)
  * [Updating tools](#updating-tools)
  * [Updating dependencies](#updating-dependencies)
* [Switching between Go versions for different projects](#switching-between-go-versions-for-different-projects)
  * [Automatic version switching](#automatic-version-switching)
  * [Manual version switching](#manual-version-switching)
  * [VS Code integration](#vs-code-integration)
* [Advanced patterns for microservices](#advanced-patterns-for-microservices)
* [Conclusion: The cross-platform advantage](#conclusion-the-cross-platform-advantage)

## 💡 Bottom Line

The most intuitive, reliable, and portable way to manage Go in 2025 is to install Go via your system's package manager as a base version, then use [mise](https://mise.jdx.dev/) for version management across projects. This setup offers excellent container integration, supports multiple Go versions, and works seamlessly in both local and containerized environments.

For teams working on microservices with both frontend and backend components, this approach provides the perfect balance of performance, flexibility, and tooling compatibility. 💪

## 🔍 Introduction: Why Go installation matters

The Go installation approach directly impacts how easily developers can switch between projects, maintain consistent environments across teams, and update toolchains. A properly configured system lets developers focus on writing code rather than fighting environment issues or dependency problems.

The decision is complicated by containerization, multiple Go versions, and the need to support both local and containerized development. A good setup must address all these concerns while remaining straightforward for new team members to adopt.

## 🛠️ Installation options


### 📦 System package managers


```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Go
brew install go
```

#### Ubuntu/Debian (APT)

```bash
sudo apt update && sudo apt install -y golang-go
```

This installs the distro's default Go version (e.g., Ubuntu 24.04 LTS includes Go 1.22.2). For newer Go versions on Ubuntu, consider using a PPA or Snap (e.g., `sudo snap install go --classic`).

#### Fedora (DNF)

```bash
sudo dnf install -y golang
```

Fedora tends to update Go relatively quickly compared to Ubuntu.

#### Red Hat UBI 9 / RHEL 9 (YUM/DNF)

```bash
# Enable codeready-builder repo if not already, then:
sudo yum module install -y go-toolset
```

This provides the system with a default Go installation that's easy to maintain and update.

### 🔄 Version managers

Several specialized tools exist for managing multiple Go installations:

1. **[mise](https://mise.jdx.dev/) (formerly rtx)**: Modern Rust-based cross-language version manager
2. **[asdf](https://asdf-vm.com/) with [golang plugin](https://github.com/kennyp/asdf-golang)**: Mature cross-language manager with rich plugin ecosystem
3. **[g](https://github.com/stefanmaric/g) (formerly goup)**: Lightweight Go-specific version manager
4. **[gvm](https://github.com/moovweb/gvm)**: Full-featured Go-specific version manager with environment isolation
5. **[goenv](https://github.com/syndbg/goenv)**: Minimalist Go version manager based on rbenv/pyenv model

After exploration, I've settled on [mise](https://mise.jdx.dev/) as the most intuitive solution.

## 🐹 Golang & mise installation

For microservice development, particularly for microservices with both frontend and backend components, the most effective approach combines a system Go installation with mise for project-specific version management.

### 1️⃣ Step 1: Install Go with the system package manager

See the [Installation options compared](#installation-options-compared) section for platform-specific commands.

### 2️⃣ Step 2: Install mise for version management

```bash
# Install mise
curl https://mise.run | sh

# Add to shell (for bash)
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
source ~/.bashrc

# For zsh (macOS default)
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc

# Install specific Go versions
mise install go@1.24.4
mise use --global go@1.24.4
```

### 3️⃣ Step 3: Configure project-specific versions

For each project, create a `.mise.toml` file in the project root:

```toml
# .mise.toml
[tools]
go = "1.24.4"
```

Or use the `mise` cli:

```bash
cd ~/projects/myproject
mise use go@1.24.4
```

This will create a `.mise.toml` file automatically.

### 🏆 Why this approach wins

1. **Simplicity**: Easy to set up and understand
2. **Performance**: Mise directly modifies PATH instead of using shims, providing better performance
3. **Multiple languages**: Supports other languages the team might use (Node.js, Python, etc.)
4. **Container compatibility**: Works well with Docker and devcontainers
5. **Active development**: Regular updates and improvements
6. **Project isolation**: Automatic version switching based on directory

## 📊 Dependency management best practices

Go's module system has matured significantly, with Go 1.24 introducing key improvements like the tool directive for managing developer tools.

### 💎 Core recommendations

1. **Enable module mode (default in Go 1.24+)**:
   ```bash
   go env -w GO111MODULE=on
   ```

2. **Use the Go module proxy** for better security and reliability:
   ```bash
   go env -w GOPROXY=https://proxy.golang.org,direct
   ```

3. **Pin versions for critical dependencies** in the go.mod file:
   ```go
   require (
       github.com/example/critical v1.2.3 // Pinned version for stability
       github.com/example/flexible v1.2.0 // Minimum version, accepts compatible updates
   )
   ```

4. **Implement security scanning** in the workflow:
   ```bash
   # Install govulncheck
   go install golang.org/x/vuln/cmd/govulncheck@latest
   
   # Scan project for vulnerabilities
   govulncheck ./...
   ```

### 🧰 Tool dependencies (Go 1.24+)

One of the most exciting additions to Go 1.24 is the `tool` directive in `go.mod`, which formalizes tool dependency management. This eliminates the old `tools.go` hack with blank imports that many projects used.

Here's how it works:

```go
// In go.mod
module example.com/myproject

go 1.24

// Tool dependencies
tool golang.org/x/tools/cmd/stringer v0.4.0
tool golang.org/x/vuln/cmd/govulncheck v1.1.0
tool honnef.co/go/tools/cmd/staticcheck v0.5.1
```

To add a tool dependency:

```bash
go get -tool github.com/golang/mock/mockgen@v1.6.0
```

To run a tool:

```bash
go tool stringer -type=MyEnum
```

This approach cleanly separates build dependencies from dev tools, ensuring everyone on the team has the exact same tool versions without manual installation steps. The tools are downloaded to your module cache and can be vendored if needed.

### 🔒 Vulnerability scanning with govulncheck

Security is an engineering priority, and Go provides built-in tools to help.

The `govulncheck` tool checks your project's dependencies against a vulnerability database and can tell you not just which packages have vulnerabilities, but whether your code actually calls the vulnerable functions: 🛡️

```bash
# Add govulncheck as a tool dependency
go get -tool golang.org/x/vuln/cmd/govulncheck
go mod tidy

# Run the vulnerability check
go tool govulncheck ./...
```

This is a huge improvement over generic security scanners and should be part of your CI pipeline as well as pre-commit checks.

## 📂 Go workspace configuration

Modern Go development uses modules and workspaces instead of the traditional GOPATH model.

### 🌱 Essential environment variables

Add the following to your shell profile (`.zshrc` for most macOS systems, `.bashrc` or `.zshrc` for Linux):

```bash
# Go environment variables
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
```

### 🧩 Multi-module workspaces with go.work

For projects with multiple related modules, use Go's workspace mode:

```bash
# Create a workspace directory
mkdir myworkspace
cd myworkspace

# Initialize individual modules
mkdir module1 module2
cd module1
go mod init github.com/yourusername/module1
cd ../module2
go mod init github.com/yourusername/module2
cd ..

# Create a workspace file
go work init module1 module2
```

This creates a `go.work` file that allows working on multiple modules simultaneously. Changes in one module are immediately visible to others without publishing.

**Best practice**: Add `go.work` and `go.work.sum` to `.gitignore` as they're generally for local development only.

### 🏗️ Real-world microservices structure

```
myproject/
├── go.work                 # Workspace file (local development only)
├── common/                 # Shared code
│   ├── go.mod
│   └── pkg/
│       ├── auth/
│       └── models/
├── services/
│   ├── user-service/       # Backend microservice
│   │   ├── go.mod
│   │   ├── main.go
│   │   └── api/
│   └── payment-service/    # Another backend microservice
│       ├── go.mod
│       ├── main.go
│       └── api/
└── web/                    # Frontend components
    ├── go.mod
    ├── main.go
    └── templates/
```

## 💻 IDE and editor setup

### 🔷 VS Code configuration

VS Code with the Go extension remains the most popular editor for Go development on both macOS and Linux.

1. Install the [VSCode Go extension](https://marketplace.visualstudio.com/items?itemName=golang.go) (by the Go Team at Google)
   * GUI: Open command palette (Cmd+Shift+P) and type "Install Extension". Search for "Go" and install.
   * CLI: `code --install-extension golang.go`

2. Add these settings to `settings.json`:
```json
{
    "go.useLanguageServer": true,
    "go.toolsManagement.autoUpdate": true,
    "go.formatTool": "gofmt",
    "go.lintTool": "golangci-lint",
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
        "source.organizeImports": "always"
    },
    "[go]": {
        "editor.defaultFormatter": "golang.go",
        "editor.formatOnSave": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": "always"
        }
    }
}
```

3. Install Go tools through VS Code:
   * Open the command palette (Cmd+Shift+P)
   * Type and select "Go: Install/Update Tools"
   * Check all tools and click "OK"

### 🔶 Vim/Neovim + LazyVim setup

For Vim/Neovim users with LazyVim, the Go setup is straightforward:

1. Ensure LazyVim is installed

2. Add the Go language plugin to LazyVim configuration:
```lua
-- In lua/plugins/go.lua
return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()'
  }
}
```

3. Launch Neovim and run `:checkhealth go` to verify setup
4. Make sure gopls and other Go tools are installed: `:GoInstallBinaries`

## 🐳 Container integration

Working with containers is essential for Go development, especially for microservices.

### 📟 DevContainer setup

DevContainers provide consistent development environments across team members.

1. Create `.devcontainer` directory in the project root

2. Create `devcontainer.json`:
```json
{
  "name": "Go Development",
  "build": {
    "dockerfile": "Dockerfile",
    "args": {
      "GO_VERSION": "1.24.0"
    }
  },
  "runArgs": [
    "--cap-add=SYS_PTRACE",
    "--security-opt", "seccomp=unconfined"
  ],
  "customizations": {
    "vscode": {
      "settings": {
        "go.toolsManagement.checkForUpdates": "local",
        "go.useLanguageServer": true,
        "go.gopath": "/go",
        "go.formatTool": "gofmt"
      },
      "extensions": [
        "golang.go",
        "GitHub.copilot",
        "ms-azuretools.vscode-docker"
      ]
    }
  },
  "remoteUser": "vscode",
  "features": {
    "ghcr.io/devcontainers/features/docker-in-docker:2": {}
  },
  "postCreateCommand": "go install github.com/go-delve/delve/cmd/dlv@latest"
}
```

3. Create a `Dockerfile` for the DevContainer:
```dockerfile
FROM mcr.microsoft.com/devcontainers/go:1-${GO_VERSION}-bullseye

# Install additional OS packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    curl git bash-completion

USER vscode

# Install mise for version management
RUN curl https://mise.run | sh && \
    echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc

# Install Go tools
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest \
    && go install golang.org/x/tools/gopls@latest \
    && go install github.com/cosmtrek/air@latest
```

### 🔌 Supporting mise in DevContainers

To integrate mise within a DevContainer:

1. Modify the Dockerfile to include mise:
```dockerfile
FROM mcr.microsoft.com/devcontainers/go:1-${GO_VERSION}-bullseye

# Install additional OS packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    curl git bash-completion

USER vscode

# Install mise for version management
RUN curl https://mise.run | sh && \
    echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc

# Pre-install specific Go version with mise
RUN ~/.local/bin/mise install go@1.24.0 && \
    ~/.local/bin/mise use --global go@1.24.0

# Install Go tools
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest \
    && go install golang.org/x/tools/gopls@latest \
    && go install github.com/cosmtrek/air@latest
```

2. Ensure the project's `.mise.toml` file is available within the container for automatic version switching

This setup allows the development container to respect project-specific Go versions defined in `.mise.toml` files, providing consistency across containerized and local development environments.

### 🏭 Multi-stage builds for production

For building production-ready container images:

```dockerfile
# Build stage
FROM golang:1.24-bullseye AS build

WORKDIR /app

# Download dependencies first (better caching)
COPY go.mod go.sum ./
RUN --mount=type=cache,target=/go/pkg/mod go mod download

# Copy source and build with cache
COPY . .
RUN --mount=type=cache,target=/go/pkg/mod \
    --mount=type=cache,target=/root/.cache/go-build \
    CGO_ENABLED=0 GOOS=linux go build -o /app/server .

# Runtime stage
FROM gcr.io/distroless/static:nonroot

WORKDIR /app

# Copy binary from build stage
COPY --from=build /app/server .

# Metadata
LABEL org.opencontainers.image.source="https://github.com/organization/project"
LABEL org.opencontainers.image.description="Go microservice"

EXPOSE 8080
ENTRYPOINT ["/app/server"]
```

### 🔥 Hot-reloading with Air

Air is a fantastic tool for live-reloading during development:

```dockerfile
# Dockerfile.dev
FROM golang:1.24

WORKDIR /app

# Install Air
RUN go install github.com/cosmtrek/air@latest

# Copy and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Start Air for hot-reloading
CMD ["air", "-c", ".air.toml"]
```

Create `.air.toml`:

```toml
root = "."
tmp_dir = "tmp"

[build]
  cmd = "go build -o ./tmp/app ."
  bin = "./tmp/app"
  delay = 1000
  exclude_dir = ["assets", "tmp", "vendor"]
  include_ext = ["go", "tpl", "tmpl", "html"]
  exclude_unchanged = true
  
[log]
  time = true

[color]
  main = "magenta"
  watcher = "cyan"
  build = "yellow"
  runner = "green"

[misc]
  clean_on_exit = true
  # Set poll = true when using volume mounts for better performance
  poll = true
```

## 🔄 Maintenance and updates

Keeping Go installations and tools up-to-date is crucial for security and performance.

### 🔼 Updating system Go

#### macOS

```bash
brew update
brew upgrade go
```

#### Ubuntu/Debian

```bash
sudo apt update
sudo apt upgrade golang-go
```

#### Fedora

```bash
sudo dnf upgrade golang
```

#### Red Hat UBI 9 / RHEL 9

```bash
sudo yum module update go-toolset
```

### 🆙 Updating version-managed Go

With mise:

```bash
mise upgrade go
mise install go@latest
mise use --global go@latest
```

### 🛠️ Updating tools

For globally installed tools:

```bash
go install -u github.com/golangci/golangci-lint/cmd/golangci-lint@latest
```

For tool dependencies (Go 1.24+):

```bash
# Update tool dependencies in go.mod
go get -u -tool golang.org/x/vuln/cmd/govulncheck
```

### 📦 Updating dependencies

To update all dependencies:

```bash
go get -u ./...
go mod tidy
```

To update a specific dependency:

```bash
go get -u github.com/example/package
go mod tidy
```

## 🔄 Switching between Go versions for different projects

One of the most powerful features of mise is automatic version switching. I've found this to be incredibly useful when working on multiple Go projects that require different versions.

### 🤖 Automatic version switching

With mise installed, simply create a `.mise.toml` file in each project directory:

```toml
# Project A (.mise.toml)
[tools]
go = "1.23.1"
```

```toml
# Project B (.mise.toml)
[tools]
go = "1.24.4"
```

When navigating between directories, mise automatically activates the correct Go version. No more manual PATH adjustments or remembering which version a project needs.

The shell integration in mise ensures that when you enter a directory with a `.mise.toml`, `.tool-versions`, or even a `.go-version` file, it will detect and switch the Go version automatically. When you leave the directory, it reverts to your global default.

This automatic detection and switching has been a game-changer for my workflow, especially when quickly moving between projects with different version requirements.

### 👋 Manual version switching

For temporary work with a specific Go version:

```bash
mise use go@1.24.0
```

To set a new global default:

```bash
mise use --global go@1.24.0
```

### 🔌 VS Code integration

For complete VS Code integration with mise:

1. Install the mise VS Code extension
2. It will automatically respect `.mise.toml` configuration
3. The Go extension will use the correct version for each project

## 🧠 Advanced patterns for microservices

For teams working on microservices with both frontend and backend components:

### 1️⃣ Shared code approach

One of the patterns I've found most effective for microservices is the shared code approach, where common functionality is extracted into a reusable module.

Create a common module for code shared across services:

```
organization/
├── common/           # Shared module
│   ├── go.mod
│   ├── auth/
│   ├── logging/
│   └── models/
├── service-a/        # Microservice A
│   ├── go.mod        # Requires common module
│   └── main.go
└── service-b/        # Microservice B
    ├── go.mod        # Requires common module
    └── main.go
```

Implementation:
```go
// In service-a/go.mod
module github.com/organization/service-a

go 1.24

require (
    github.com/organization/common v1.0.0
)

// For local development
replace github.com/organization/common => ../common
```

This pattern allows for code reuse while maintaining clear boundaries between services. During local development, the `replace` directive points to the local common module, while in production each service can depend on a specific published version.

### 2️⃣ Multi-module monorepo with go.work

Go 1.18+ introduced workspaces, which provide an elegant solution for monorepos with multiple modules:

```
monorepo/
├── go.work           # Workspace file
├── shared/           # Shared libraries
│   ├── go.mod
│   └── util/
├── service-a/        # Microservice A
│   ├── go.mod
│   └── main.go
└── service-b/        # Microservice B
    ├── go.mod
    └── main.go
```

Creating a `go.work` file:

```
# go.work file
go 1.24

use (
    ./shared
    ./service-a
    ./service-b
)
```

This approach has completely replaced the need for `replace` directives in each module's go.mod. Now, when working locally, Go automatically knows to use the local versions of each module, making local development much smoother.

The workspace feature means monorepos no longer need complicated setups - the `go.work` file handles everything elegantly, and each service can maintain its own dependency graph.

For CI/CD, you can simply disable the workspace with `GOWORK=off` and the normal module resolution will take over.

### 3️⃣ Multi-environment docker-compose

For local development of multiple services:

```yaml
# docker-compose.yml
version: '3.8'
services:
  service-a:
    build:
      context: ./service-a
      dockerfile: Dockerfile.dev
    volumes:
      - ./service-a:/app:delegated
      - go-mod-cache:/go/pkg/mod
    ports:
      - "8080:8080"
    environment:
      - SERVICE_B_URL=http://service-b:8081
  
  service-b:
    build:
      context: ./service-b
      dockerfile: Dockerfile.dev
    volumes:
      - ./service-b:/app:delegated
      - go-mod-cache:/go/pkg/mod
    ports:
      - "8081:8081"

volumes:
  go-mod-cache:
```

## 🏁 Conclusion: The cross-platform advantage

After implementing this setup across my projects on both macOS and Linux, I've found that the combination of a system Go installation with mise for version management offers the most intuitive, reliable, and modern approach to managing Go.

This setup provides:

1. **Simplicity**: Easy to install and configure on any platform
2. **Reliability**: Consistent environments across team members on different operating systems
3. **Portability**: Works across development and production environments on both macOS and Linux
4. **Flexibility**: Supports multiple Go versions and projects
5. **Performance**: Optimized for both macOS and Linux
6. **Integration**: Works well with modern IDEs and development tools

For my greenfield projects without backward compatibility concerns, this approach offers the perfect balance of developer experience and operational reliability. By following these recommendations, you can focus on building great microservices rather than fighting with your development environment.

Remember that the ultimate goal is a setup that gets out of your way and lets you focus on writing great Go code. This guide helps achieve exactly that with the most modern, efficient approach possible in 2025.

![Golang lifecycle diagram showing the growth and management of Go projects, represented as plants in various stages of development](/images/golang-lifecycle-plants.png)