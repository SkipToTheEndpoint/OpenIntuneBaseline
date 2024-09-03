# OpenIntuneBaseline

<p align="center">
  <a href="https://twitter.com/SkipToEndpoint">
    <img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/SkipToEndpoint?label=Follow%20%40SkipToEndpoint&logo=Twitter&style=flat-square" target="_blank" />
  </a>
  <a href="https://skiptotheendpoint.co.uk">
    <img alt="Twitter Follow" src="https://img.shields.io/badge/Read%20my%20blog-grey?style=flat-square&logo=ghost" target="_blank" />
  </a>
</p>
<p align="center">
  <a href="https://discord.gg/msems">
    <img alt="Discord" src="https://img.shields.io/discord/1008077287813550090?label=Join%20the%20MS%20EMS%20Community&logo=discord&style=flat-square" target="_blank" />
  </a>
  <a href="https://discord.gg/winadmins">
    <img alt="Discord" src="https://img.shields.io/discord/618712310185197588?label=Join%20WinAdmins&logo=discord&style=flat-square" target="_blank" />
  </a>
</p>

---

> [!IMPORTANT]
> This has been developed as a starting point or foundation and is not necessarily considered "complete". It is being made available to allow learning, development, and knowledge-sharing amongst communities.
>
> No liability is assumed for the usage or application of the settings within this project in production tenants.

---

## Project History
The OpenIntuneBaseline (OIB) project was started as a way to provide a "known good" baseline security posture for Windows devices managed by Microsoft Intune.

### Security Framework Adherence
When creating the initial Windows baseline, substantial data analysis was carried out over well-known security frameworks, such as:

* NCSC Device Security Guidance
* CIS Windows Benchmarks
* ACSC Essential Eight
* Intune Security Baselines for Windows, Edge & Defender for Endpoint
* Microsoft Best Practice

The OIB was not created by simply applying the recommendations from these frameworks. While there is obviously significant overlap, I was driven to create something that included a number of user-experience additions not seen in the above frameworks, as well as my own significant experience implementing these across multiple customer environments, and how admin managability can be impacted by doing so.

Security frameworks tend to be seen as unmovable hard requirements rather than what they are, which is a set of **recommendations**. In fact, the CIS themselves preface their benchmarks with the following:

> It is acceptable if _**100% of the benchmark is not applied**_, as it is the responsibility and decision of each organization to determine which settings are applicable to their unique needs.

It is **impossible** to create a true "one-size-fits-all" set of policies due to the massively differing nature of enterprise requirements. There is also a significant amount of "noise" in the security community, with many recommending settings that are not necessarily required or beneficial, such as enforcing default behaviour that a standard user cannot change, or settings that have been included in GPO baselines since the days of Windows 7. 

This baseline is designed to be a starting point or guide, and all configurations applied to an environment regardless of source should be reviewed and adjusted to suit your own business requirements.

That being said, if there's something you feel is missing or should be included, please feel free to raise an issue or submit a PR.

---

## Importing the Baseline
You have two options when importing the baseline:

### **IntuneManagement**
This is the recommended method, as it allows for an import of the entire baseline. 

These files have been exported using the [IntuneManagement](https://github.com/Micke-K/IntuneManagement) tool developed by [Mikael Karlsson](https://twitter.com/Micke_K_72), and can be imported in the same way.
Please consult the IntuneManagement documentation for further information on how to import the baseline or for issues.

You can choose to import as much or as little of the baseline as you wish, though you will need to change the "Root folder" to the appropriate folder for the platform (e.g. WINDOWS), or policy types (e.g. Settings Catalog) you wish to import.

### **Native Import**

I understand not everyone has the ability or permissions to use the IntuneManagement tool, and have been asked to support using the [native import/export functionality in Intune](https://learn.microsoft.com/en-us/mem/intune/configuration/settings-catalog?tabs=sc-search-filter%2Csc-reporting#import-and-export-a-profile).

NOTE: The Native Import is limited to only importing Settings Catalog policies in the Device Configuration blade. This means settings outside of that (e.g. Compliance, Endpoint Security) are not available. I would recommend submitting feedback within Intune to expand the ability to import/export all policy types.

---

## Versioning & Repo Structure
This project started as Windows only and the naming convention has been somewhat... fluid. Now that additional OS's have been added, some form of standardisation is necessary.
Version numbers will primarily follow the format of `Major.Minor`, occasionally using `Major.Minor.Patch` if something fits in the "bug fix" category.

Each OS will have its own folder, with OS-specific files (readme, changelog, baseline JSON's, supporting information etc.) contained within.

The current OIB versions are:
| OS | Current Release | Change Log | Wiki Page |
|:---:|:---:|:---:|:---:|
| [Windows](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/main/WINDOWS) | [v3.3](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v3.3) | [Link](/WINDOWS/CHANGELOG.md) | [Link](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/wiki/win-readme) |
| [Windows 365](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/main/WINDOWS365) | [v1.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/win365-v1.0) | [Link](/WINDOWS365/CHANGELOG.md) | [Link](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/wiki/win365-readme) |
| [MacOS](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/main/MACOS) | [v1.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/macos-v1.0) | [Link](/MACOS/CHANGELOG.md) | [Link](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/wiki/macos-readme) |

Please consult the wiki pages and README.md in each OS folder for more information.

---

## Policy Naming Convention
Across the OIB, the following naming convention is used, seen below with some examples:
| OS | | Identifier | | Category | | Device/User Assignment | | Sub-Category | | Version |
|:---:|:-:|:---:|:-:|:---:|:-:|:---:|:-:|:---:|:-:|:---:|
| Win | - | OIB | - | Device Security | - | D | - | Login and Lock Screen | - | v3.0 |
| Win365 | - | OIB | - | Device Security | - | D | - | Resource Redirection | - | v1.0 |
| MacOS | - | OIB | - | Microsoft Edge | - | D | - | Security | - | v1.0 |

Further information on the naming convention can be found in the [FAQ](/FAQ.md#why-do-policies-have-d-and-u-in-their-name).