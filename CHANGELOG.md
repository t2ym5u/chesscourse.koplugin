# Changelog

All notable changes to this project will be documented in this file.

Reconstructed from this repository's git history: each release lists the
feature and fix commits it carried. Version bumps, screenshot additions
and CI syncs are left out.

## [1.2.16] - 2026-08-05

### Added
- Add ES and DE translations

## [1.2.15] - 2026-08-05

### Changed
- Add issue/PR templates and CONTRIBUTING.md

### Fixed
- Use English source strings for i18n (was French, showed wrong in English locale)

## [1.2.14] - 2026-08-04

### Changed
- Symlink common/ to shared game-common (identical content)

## [1.2.12] - 2026-07-31

### Fixed
- Use valid Blitbuffer gray constants (COLOR_GRAY_C/A/8 don't exist)

## [1.2.9] - 2026-07-29

### Fixed
- Drop deprecated name field from _meta.lua

## [1.2.6] - 2026-07-28

### Changed
- Add GPL-3.0 LICENSE

## [1.2.2] - 2026-07-17

### Fixed
- Vendor chess piece assets directly instead of via game-common

## [1.2.0] - 2026-07-15

### Fixed
- Correct 20 illegal chess puzzles + add 23 new verified lessons

## [1.1.1] - 2026-07-15

### Added
- Adopt TitleBar header via buildTitleBar/buildPortraitLayout
- Adopt TitleBar header, sync common/ with game-common

### Changed
- Remove ../game-common/ fallback from package.path

### Fixed
- Use name field (not id) in _meta.lua

## [1.1.0] - 2026-07-08

### Added
- I18n FR/EN translation + bump to 1.1.0
