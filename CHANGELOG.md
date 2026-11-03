# OIB Project Changelog

# 2026-11-03
## Releases
* [OIB BYOD v2.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/byod-v2.0)

The BYOD App Protection policies for Android and iOS/iPadOS have been rebuilt in line with **Level 2** of Microsoft's App Protection data protection framework, with selected settings raised to Level 3. See the [BYOD Change Log](/BYOD/CHANGELOG.md) for the full list of changes from v1 and the deviations from Level 2.

---

# 2026-10-19
## Updated
[**OIB Documentation**](https://docs.openintunebaseline.com)

Documentation now lives at docs.openintunebaseline.com, replacing the GitHub wiki. The importing, versioning, naming convention, FAQ, settings guidance, known issues and per-platform documentation have been moved there, and the README files in this repo now link to it.

---

# 2026-10-15
## Releases
* [OIB iOS v1.0 Beta](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/ios-v1.0-beta)

---

# 2026-09-30
## Releases
* [OIB Windows v4.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v4.0)

## Added
* Added settings rationale against the CIS Intune Benchmark - [OIB v4.0 vs CIS Intune v5.0.0 Deviation Rationale](/WINDOWS/OIB4.0-CIS5.0.0-DeviationRationale.csv)

---

# 2026-04-16
## Releases
* [OIB Windows v3.8](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.8)

---

# 2026-01-28
## Releases
* [OIB MacOS v2.0 Beta](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/macos-v2.0-beta)

---

# 2025-10-15
## Releases
* [OIB Windows v3.7](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.7)

---

# 2025-05-13
## Releases
* [OIB Windows v3.6](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.6)

---

# 2025-02-20
## Releases
* [OIB Windows v3.5](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.5)

---

# 2025-01-24
## Added
* Added new comparison and settings rationale against the CIS Intune Benchmark - OIB v3.4 vs CIS Intune v3.0.1 (superseded by the v4.0 rationale above, and no longer in the repo)

## Releases
* [OIB Windows v3.4](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.4)

---

# 2024-09-03
## Updated
[**OIB Wiki**](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/wiki)

A number of supporting docs have been moved to Wiki pages and removed from the repos to support a better documentation layout.

---

# 2024-09-02
## Releases
* [OIB MacOS v1.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/macos-v1.0)
* [OIB Windows 365 v1.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/win365-v1.0)
* [OIB Windows v3.3](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.3)

---

# 2024-08-29
## Added
**Repo Changelog**

Started this changelog to track changes to the whole repo to support the redesigned repo structure!

**Contributors**

Added [Contributors](CONTRIBUTORS.md) file to track contributors to the project, and the [contributors-readme-action](https://github.com/akhilmhdh/contributors-readme-action) to automatically update the the file with the contributors list.

## Changed
**Repo Structure**

To support the OIB expanding into new territories, the repo structure has been redesigned to support multiple OS's. Each OS will have its own folder, with OS-specific files (readme, changelog, baseline JSON's, supporting information etc.) contained within.
The root of the repo will now contain a README.md that will act as a "hub" for the project, linking to the various OS's and their respective README.md files.

As such, some of the files previously in the root of the repo have been moved to the WINDOWS folder.
