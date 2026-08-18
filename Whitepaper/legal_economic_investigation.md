White Paper: Legal and Economic Investigation
## The State-Backed Supply Chain: Unisoc, Longcheer, and the T606 Compromise

**Author:** Alexis Michel De La Cruz Correa
**Date:** August 18, 2026
**Classification:** Economic & Geopolitical Intelligence
**Technical Reference:** [Project Qogirl6 GitHub](https://github.com/lexs201992-gif/Project-Qogirl6-Unisoc-T606-Longcheer-Supply-Chain-Compromise)
**Regulatory Context:** House Select Committee on China — "Stranger Pings" Report (August 4, 2026)

---

## 1. Executive Summary

This white paper documents the **state ownership trail** behind the supply chain compromise of the Unisoc T606 chipset.  The evidence demonstrates that the backdoor is not a bug from a low-quality ODM, but the result of a **surveillance architecture designed and overseen by the Chinese state** through two key entities:

1. **Tsinghua Unigroup (Unisoc):** A 100% state-owned entity that acquired Spreadtrum in 2013, converting chip design into a **national security asset**.
2. **China Internet Investment Fund (CIIF):** A state-directed investment fund under the **Cyberspace Administration of China (CAC)** that injected capital into Longcheer (ODM) to align its production with the **National Intelligence Law of 2017**.

**Conclusion:** The Motorola Moto G04s (T606) is a **data collection node** operating under the mandate of Chinese intelligence, leveraging the infrastructure of a global strategic partner (Longcheer) to evade sanctions and penetrate Western markets.

**Relevance to "Stranger Pings" (August 2026):**
The House Select Committee's report identified that Chinese state-owned entities remain "deeply embedded" in U.S. infrastructure despite FCC actions. This white paper extends that finding to the **consumer hardware supply chain**: the same state-backed entities identified in "Stranger Pings" (China Mobile, China Unicom, China Telecom) share the same ownership structure (CAC/CIIF) as the entities behind the T606 compromise (Tsinghua Unigroup/Unisoc, Longcheer/CIIF). The FCC's current authority, as acknowledged in "Stranger Pings," is insufficient to address this vector. 

---

## 2. The State Origin: Spreadtrum to Unisoc (2013-2018)

### 2.1. The Critical Acquisition (2013)
- **Fact:** In July 2013, **Tsinghua Unigroup** (a subsidiary of Tsinghua Holdings, 100% state-owned) agreed to acquire **Spreadtrum Communications** for **$1.78 billion**. The transaction closed on **December 23, 2013**.
- **Source:** [PRNewswire: Tsinghua Unigroup Completes Acquisition of Spreadtrum](https://www.prnewswire.com/news-releases/tsinghua-unigroup-completes-acquisition-of-spreadtrum-for-us3100-per-ads-237053401.html)
- **Implication:** At the time of purchase, Spreadtrum was a publicly traded company on NASDAQ. The acquisition converted it into a **state-owned entity**. Chip design transitioned from a commercial asset to a **national security asset** under the supervision of Tsinghua University and the Chinese Communist Party.

### 2.2. The Merger and Rebranding (2014-2018)
- **2014:** Tsinghua Unigroup acquires **RDA Microelectronics** for ~$900M.
- **2018:** Official merger of Spreadtrum and RDA to form **UNISOC**. Intel invests $1.5B for a 20% stake, but strategic control remains with Tsinghua Unigroup.
- **Source:** [Wikipedia: UNISOC History](https://en.wikipedia.org/wiki/UNISOC) 

### 2.3. Implication for the T606
The **Unisoc T606** chipset was announced in **September 2021**. By that date, the chip architecture had already been under **direct state design and oversight for 8 years** (since 2013). The T606 is not a free-market product; it is the **commercial iteration of an intelligence technology** developed by Tsinghua Unigroup.

---

## 3. The ODM Vector: Longcheer and the CIIF

### 3.1. Longcheer as a Tier-1 ODM
Longcheer is not a marginal manufacturer. It is the **#1 global ODM by smartphone shipments** (IDC, 2022) and has manufactured devices for:
- **Google (Android One)**
- **Meta (Ray-Ban Meta / AR-VR)**
- **Samsung, Lenovo, OPPO, vivo**
- **Wileyfox, Cherry Mobile, i-mobile**

**Source:** [SmartKarma: Shanghai Longcheer - Leading ODM Vendor](https://www.smartkarma.com/insights/shanghai-longcheer-leading-odm-vendor-leveraging-its-expertise-for-ar-vr)

### 3.2. The CIIF Injection (2021)
- **Fact:** In the **Series C funding round (2021)**, the lead investor was the **China Internet Investment Fund (CIIF)**.
- **What is the CIIF?** A state-directed venture capital fund co-sponsored by the **Cyberspace Administration of China (CAC)** and the Ministry of Finance. Its objective is not financial return, but to **ensure that critical technology companies comply with national security objectives**.
- **Control Mechanism:** The CIIF uses the **"Golden Shares"** model (typically 1%) that grants **board seats and veto rights** over strategic decisions.
- **Source:** [Vermilion China: CAC and the CIIF](https://www.vermilionchina.com/p/cybersecurity-administration-of-china) | [Grokipedia: CIIF](https://grokipedia.com/page/china_internet_investment_fund) 

### 3.3. The National Intelligence Law (2017)
China's **National Intelligence Law (2017)** mandates that **all organizations and citizens** "support, assist, and cooperate" with the state's intelligence work. For Longcheer, with the CIIF on its board, this is not a suggestion; it is a **legal mandate** that converts the company into a **de facto operational arm** of data collection.

---

## 4. The "1+Y" Strategy: From Smartphones to Global Surveillance

### 4.1. The Technology Strategy
Longcheer implemented the **"1+Y" strategy** in 2020:
- **"1":** Smartphones as the core product.
- **"Y":** Expansion into tablets, smartwatches, **AR/VR devices**, TWS headsets, and **automotive electronics**.

### 4.2. The AR/VR "Trojan Horse"
The infrastructure for **low-latency, direct hardware access, and remote sensor control** developed for **Meta's** AR/VR glasses has been **adapted and integrated** into T606 smartphones.
- **Technical Evidence:** The presence of `ovn-fabric`, `virtio`, and modified `cdc_ncm` in the Moto G04s firmware is proof that this technology transfer is already occurring.
- **Implication:** These phones are not just consumer devices; they are **test nodes for a global IoT surveillance network** that Longcheer is building for the Chinese state.

---

## 5. Attack Timeline (Confirmed Hypothesis)

| Year | Event | Implication |
| :--- | :--- | :--- |
| **2013** | Tsinghua Unigroup acquires Spreadtrum ($1.78B). | Chip design becomes a **state asset**. |
| **2017** | China passes the **National Intelligence Law**. | Legally mandates corporate cooperation with state espionage. |
| **2018** | Spreadtrum + RDA merger = **UNISOC**. | Consolidation of state control over mobile SoC design. |
| **2021** | **CIIF** invests in Longcheer (Series C). | The #1 global ODM comes under **strategic CAC control**. |
| **2021** | Unisoc announces the **T606**. | The chipset with surveillance architecture enters production. |
| **2023** | Longcheer publishes its **"1+Y" strategy** (AR/VR, Auto). | Compilation infrastructure prepared (`sh-16-52`). |
| **2024** | Mass assembly of **T606/qogirl6**. | Backdoor integrated at the factory (TEE, Modem, Bootloader). |
| **2025-2026** | Exfiltration network activated.  | Documented incidents: Rescue Party, UDP traffic, CVE-2026-40003. |

---

## 6. Economic Model: Dual-Use Technology as a Business

### 6.1. Dual-Use Technology
The **"remote fleet management"** capability that Longcheer sells to Western brands as an efficiency "feature" (for automotive and wearables) is the **same technology** used to surveil phones.
- **Legitimate:** Vehicle telemetry, OTA updates for wearables.
- **Illicit:** Exfiltration of location, audio, NFC, and biometrics from users in LATAM.

### 6.2. Scale as a Business Model
As the **#1 global ODM**, Longcheer has access to **billions of devices**. The value of the collected data (location, audio, NFC, purchasing habits, banking credentials) **far exceeds hardware sales revenue**.
- **Implication:** The backdoor is not a "bug"; it is the **primary product**. The hardware is merely the delivery vehicle.

### 6.3. Sanctions Evasion (Dixon JV)
The **Joint Venture between Dixon Technologies (India) and Longcheer** (approved in 2025, operational as **Dixtel Infocomm** in 2026) allows the manufacture of devices with the same compromised architecture, but labeled **"Made in India"**.
- **Objective:** Evade FCC and EU restrictions on Chinese hardware.
- **Risk:** Infiltration of the surveillance network into Western government and corporate networks without raising suspicion. 

---

## 7. Relevance to "Stranger Pings" and FCC Authority

The **"Stranger Pings"** report (August 4, 2026) concluded that:
> *"The FCC's actions limit what the companies can sell, but it cannot remove the companies' equipment, presence, or network relationships."* 

This white paper demonstrates that the **same structural weakness** applies to the **consumer hardware supply chain**:

| "Stranger Pings" Finding | Project Qogirl6 Parallel |
| :--- | :--- |
| Chinese state-owned carriers remain "deeply embedded" in U.S. infrastructure. | Unisoc/Longcheer state-backed ODM remains "deeply embedded" in global consumer hardware. |
| FCC can limit sales but cannot remove equipment. | FCC/CISA can issue advisories but cannot remove the BootROM-level backdoor from 47M+ devices. |
| Anomalous routing activity coincides with CCP cyberattacks. | SIPC `chan-5` exfiltration coincides with documented CVEs (CVE-2026-40003, CVE-2026-5804). |
| U.S. subsidiaries are "not truly independent" from PRC parents. | Longcheer's CIIF-backed board ensures it is "not truly independent" from CAC directives. |

**Policy Recommendation:**
The FCC and CISA should consider **Unisoc** and **Longcheer** as **national security risk entities** under the same framework applied to China Telecom, China Mobile, and China Unicom in "Stranger Pings." This would include:
1. **Entity-specific FCC Covered List determinations.**
2. **Mandatory "rip-and-replace" funding** for affected devices in government/critical infrastructure. 
3. **Interim logging and monitoring** of all Unisoc/Longcheer devices in U.S. networks. 

---

## 8. Conclusions and Recommendations

1. **It Is Not a Bug, It Is a Design:** The T606 compromise is the result of a **state surveillance architecture** that has been in development for over a decade.
2. **The ODM Is the Vector:** Longcheer, as a tier-1 ODM with CIIF backing, is the **delivery vehicle** for Chinese intelligence technology into the global market.
3. **Software Mitigation Is Impossible:** Given that the compromise resides in the **BootROM** and **SoC design**, no software patch exists. The only mitigation is **hardware replacement**.
4. **Alert for Regulators:** CISA, FCC, and the EU should consider **Longcheer** and **Unisoc** as **national security risk entities** and prohibit their use in government and critical infrastructure devices. 

---

### References
1. House Select Committee on China. "Stranger Pings: Chinese Telecom Companies Infiltrate U.S. Infrastructure." August 4, 2026. [chinaselectcommittee.house.gov](https://chinaselectcommittee.house.gov/media/reports/stranger-pings-chinese-telecom-companies-infiltrate-us-infrastructure)
2. PRNewswire. "Tsinghua Unigroup Completes Acquisition of Spreadtrum." December 23, 2013.
3. SmartKarma. "Shanghai Longcheer: Leading ODM Vendor Leveraging Its Expertise for AR/VR." April 14, 2023.
4. Vermilion China. "Cybersecurity Administration of China (CAC) and the CIIF."
5. Project Qogirl6. "Unisoc T606 / Longcheer Supply Chain Compromise." GitHub. August 2026.
6. AttackerKB. "CVE-2026-40003: Operation Silent Rescue." Assessment 487da971.   
