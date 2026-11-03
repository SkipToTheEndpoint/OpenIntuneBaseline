# OpenIntuneBaseline

<p align="center">
  <a href="https://x.com/SkipToEndpoint">
    <img alt="X (formerly Twitter) Follow" src="https://img.shields.io/twitter/follow/SkipToEndpoint?style=social&label=Follow%20on%20X" target="_blank" />
  </a>
   | 
  <a href="https://bsky.app/profile/skiptotheendpoint.co.uk">
    <img alt="BlueSky URL" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fpublic.api.bsky.app%2Fxrpc%2Fapp.bsky.actor.getProfile%2F%3Factor%3Dskiptotheendpoint.co.uk&query=%24.followersCount&style=social&logo=bluesky&label=Follow%20on%20BSky" target="_blank" />
  </a>
   | 
  <a href="https://skiptotheendpoint.co.uk">
    <img alt="Blog" src="https://img.shields.io/badge/Read%20My%20Blog-grey?style=flat-square&logo=ghost" target="_blank" />
  </a>
</p>
<p align="center">
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

## About the Author
James is a Technical Architect and [Microsoft MVP](https://mvp.microsoft.com/en-US/MVP/profile/0d76426f-95fb-ed11-8f6d-000d3a560942) in both Intune and Windows, and has been working in the IT industry for over 20 years, with the last 10 being primarily within Intune. He is also a recognised contributor to the CIS Windows Benchmarks.
He has a wealth of experience across the Microsoft 365 stack, with a focus on security and compliance, and is a regular attendee and speaker at community events such as [MMS](https://mmsmoa.com/) and [Workplace Ninja Summit](https://www.wpninjas.ch/events/), and is passionate about sharing knowledge and helping others.

---

## About the Project

### Project History
The OpenIntuneBaseline (OIB) project was started in early 2021 as a way to provide a "known good" baseline security posture for Windows devices managed by Microsoft Intune, after being disappointed with the admin and user experience of other available baselines.

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

## Documentation
Full documentation for the OpenIntuneBaseline is available at **[docs.openintunebaseline.com](https://docs.openintunebaseline.com)**, including importing, versioning, settings guidance, known issues and the FAQ.

| Platform | Release Status | Current Release | Documentation | Change Log |
|:---:|:---:|:---:|:---:|:---:|
| [Windows](/WINDOWS) | Stable | [v4.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/windows-v4.0) | [Link](https://docs.openintunebaseline.com/platforms/windows/) | [Link](/WINDOWS/CHANGELOG.md) |
| [Windows 365](/WINDOWS365) | Unstable | [v1.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/win365-v1.0) | [Link](https://docs.openintunebaseline.com/platforms/windows365/) | [Link](/WINDOWS365/CHANGELOG.md) |
| [MacOS](/MACOS) | Unstable<br>Beta | [v1.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/macos-v1.0)<br>[v2.0 Beta](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/macos-v2.0-beta) | [Link](https://docs.openintunebaseline.com/platforms/macos/) | [Link](/MACOS/CHANGELOG.md) |
| [iOS](/IOS) | Beta | [v1.0 Beta](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/tree/ios-v1.0-beta) | [Link](https://docs.openintunebaseline.com/platforms/ios/) | - |
| [Android](/ANDROID) | In Development | - | - | - |
| [BYOD (App Protection)](/BYOD) | Stable | [v2.0](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/releases/tag/byod-v2.0) | [Link](https://docs.openintunebaseline.com/platforms/byod/) | [Link](/BYOD/CHANGELOG.md) |


---

## Importing the Baseline
There are four options to import the baseline. See [Importing the baseline](https://docs.openintunebaseline.com/getting-started/importing/) for details of each:

* **[OIB Deployer](https://deploy.openintunebaseline.com/)** - My own tool, allowing platform-specific, granular deployment of the baseline, and highlighting missing or updated policies in your tenant.
* **[TenuVault](https://docs.tenuvault.com/baselines/quick-start/)** - Deploys, compares and validates OIB policies in your tenant. Documented separately.
* **[IntuneManagement](https://github.com/Micke-K/IntuneManagement)** - The OG deployment method, and how I still export the majority of baseline policies.
* **[Native Import](https://learn.microsoft.com/en-us/mem/intune/configuration/settings-catalog?tabs=sc-search-filter%2Csc-reporting#import-and-export-a-profile)** - Limited to Settings Catalog policies in the Device Configuration blade.

---

## Versioning & Repo Structure
Each OS has its own folder, with OS-specific files (readme, changelog, baseline JSON's, supporting information etc.) contained within, and is versioned independently. Version numbers primarily follow the format of `Major.Minor`, occasionally using `Major.Minor.Patch` if something fits in the "bug fix" category.

The current versions and release channels of every platform are listed in [releases.json](/releases.json) and on the [Releases](https://docs.openintunebaseline.com/reference/releases/) documentation page. See [Versioning and release channels](https://docs.openintunebaseline.com/getting-started/versioning/) for more information.

---

## Policy Naming Convention
All policies follow the same naming convention, for example `Win - OIB - Device Security - D - Login and Lock Screen - v3.0`. See [Policy naming convention](https://docs.openintunebaseline.com/getting-started/naming-convention/) for details.

---

## Frequently Asked Questions

 **[Frequently Asked Questions | docs.openintunebaseline.com](https://docs.openintunebaseline.com/faq/)**

If you have a question that isn't answered there, please raise an [issue](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/issues),post in [discussions](https://github.com/SkipToTheEndpoint/OpenIntuneBaseline/discussions), or come ask in the [WinAdmins Discord](https://discord.com/channels/618712310185197588/1504913449233416232)
