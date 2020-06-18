# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]

## [2020.06.18]
### Added
- `iputils-ping` package in dockerfiles to allow ping.
- Vim terminal windows size setting - set to `20x0`.
- NERDTree settings for following features:
  - Open automatically when vim starts up with no file specified.
  - Close vim if the only window left open is NERDTree.
  - Show hidden files by default but hide folder `.git`, `.DS_Store` and
`.swp` files.

### Fixed
- Issue of `pipenv` returns `Failed to load paths: /bin/sh: 1: .../python: not 
found` by pinning the `pipenv` version to `2018.11.26`.

## [2020.06.17]
### Added
- `.vimrc` configured for Python developemnt.
- Ubuntu 20.04 based dockerfiles to build images for Python 3.7 & 3.8 variants.

[Unreleased]: https://github.com/devtography/pyvim/compare/2020.06.18...HEAD
[2020.06.18]: https://github.com/devtography/pyvim/compare/2020.06.17...2020.06.18
[2020.06.17]: https://github.com/devtography/pyvim/releases/tag/2020.06.17
