# The Role of Bitcoin in a 3-Asset Portfolio – Analysis & Replication

## Table of Contents
1. [Introduction](#introduction)  
2. [Motivation & Background](#motivation--background)  
3. [About the Original Study](#about-the-original-study)  
4. [Dive into the Study](#dive-into-the-study)  
5. [Disclaimer](#disclaimer)  
6. [License](#license)

---

## Introduction
Welcome to this GitHub project focusing on **Bitcoin’s role in a 3-asset portfolio**. The main objective here is to analyze the findings from an academic study and then replicate or extend those findings using more recent data. While I hold a strong interest in Bitcoin as an asset, please note this is **not** financial or investment advice but rather an **educational** exploration.

---

## Motivation & Background
I’ve been interested in economics since my school days. However, it wasn’t until I suffered an accident that I found the time to revisit my fascination with financial markets. During recovery, I delved deeper into how monetary policy and inflation affect our daily lives—especially as these factors seemed to magnify following the COVID-19 pandemic.

My interest in Bitcoin arose around 2024, though I was aware of it much earlier. Initially, I viewed Bitcoin as a speculative vehicle. Over time, however, the persistent erosion of purchasing power in traditional currencies led me to consider Bitcoin’s potential as more than just a tool for speculation.

### Preliminary Observations & Thoughts
- **Inflation & Fiat Devaluation**:  
  - A euro today buys only about 58.207% of what it did in 2000.  
  - A dollar today buys only about 53.847% of what it did in 2000.  
  - A franc today buys only about 86.192% of what it did in 2000.  
  *(Data from [in2013dollars.com](https://www.in2013dollars.com/))*

- **Limited Supply & Decentralization**:  
  Bitcoin’s capped supply (21 million coins) appeals to those concerned about central banks’ ability to print money indefinitely. Its decentralized ledger (spread across many computers) also makes it less susceptible to corruption or unilateral control.

- **Risk & Volatility**:  
  Bitcoin remains a relatively new and **risky** asset compared to more established investments like equities or gold. Nonetheless, risk is a part of its allure and underscores why careful analysis is necessary before making any decisions.

- **Housing Prices in Gold Terms**:  
  - **2000**: €1,800 per m² / €248 per oz of gold ≈ **7.26 ounces of gold** per m².  
  - **2024**: €4,500 per m² / €2,884 per oz of gold ≈ **1.56 ounces of gold** per m².  
  - **Interpretation**: Despite the nominal rise in housing prices in Madrid, the cost per square meter **decreased by approximately 78%** when measured in gold between 2000 and 2024. This suggests that gold has appreciated at a faster rate than real estate in Madrid over this period.  
  *(References: [pressdigital.es](https://pressdigital.es), [oro.bullionvault.es](https://oro.bullionvault.es), [banker-house.com](https://banker-house.com))*  

- **Bitcoin as a Long-Term Store of Value**:  
  I believe Bitcoin has characteristics akin to gold. Its long-term price behavior shows that, while it can be volatile, it may serve as a store of value over a multi-year horizon. For instance, someone who bought Bitcoin on **December 16, 2017**, at around **$16,000**, had to wait until **2020** to see the price return to that same valuation. This perspective implies that if you invest in Bitcoin, you might not be overly concerned about its price movements in the short term (e.g., 1–5 years).

---

## About the Original Study
- **Title**: *The Role of Bitcoin in a 3-Asset Portfolio*  
- **Author**: Phillip Schottler  
- **Date of Publication**: June 14, 2022  
- **Data Range**: *September 17, 2014 – November 17, 2021*  
- **Link**: [Study on DataCamp Datalab](https://www.datacamp.com/datalab/w/21cc7714-89b7-48e4-b1b3-7733e95e536a)

This study examines how Bitcoin can impact the returns and risk profile of a portfolio that otherwise consists of more traditional assets. It explores correlations, volatility, and overall diversification benefits. My plan is to look at this original analysis, replicate it with the same date range, and then apply a similar framework using **updated data** to see if the conclusions still hold.

---

## Dive into the Study

To help answer the key questions, this report analyzes Bitcoin’s performance since 2014 alongside the two other major asset classes in our fund—US equities and gold. We aim to shed light on:

1. **Bitcoin’s relative performance** (risk and returns) vs. the S&P 500 and gold.  
2. **Portfolio implications** of including Bitcoin: Does it improve performance?  
3. **Inflation-hedging properties** of Bitcoin.  
4. **Risk minimization** in a portfolio with Bitcoin: Where does Bitcoin fit in a minimum-volatility allocation, and how does a risk-adjusted “optimal” portfolio look?

> **Note of caution**:  
> This analysis is entirely based on **historical data** (2014–2021). The period analyzed is relatively short and includes years of fairly low inflation, as well as Bitcoin’s early adoption phase with massive investor inflows. Extrapolating past performance into the future can be misleading. We strongly recommend complementing any conclusions here with **forward-looking** research, especially as inflation rose markedly in 2022.

---

### Data Description & Methodology

All the raw data used in this project is available in the `/data/` folder.

I worked with 4 different datasets:

| Asset | Dataset Used | Frequency | Notes |
|-------|-----------------|------------|-------|
| Bitcoin | BTC | Monthly | Already in monthly format. I just extracted: Close price, High, and Low for each respective month since Sep 2014. |
| S&P 500 | VUSA ETF | Daily | I used the VUSA ETF (which replicates the S&P 500). From the daily data, I captured for each month: Close price, High and Low. |
| Gold | XAU/USD | 15-min | The dataset was at 15-minute frequency. I extracted the last available value of each day and then, for each month: Close price, High and Low. |
| Inflation | CPI US | Monthly | I used Jan 2014 as the base value (100% or 0% inflation). Monthly data was already available since Jan 2014. |

---

### Final Datasets

After cleaning, transforming and aggregating the data, I created two final datasets:

| Dataset | Period | Purpose |
|---------|--------|---------|
| `final_df_study` | Sep 2014 – Nov 2021 | To replicate the exact period used by the original study. |
| `final_df_extended` | Sep 2014 – Feb 2025 | To extend the analysis and check if the findings still hold with more recent data. |

To build both datasets, I performed two main joins using the monthly frequency and aligning all assets on the same timeline.

### About My Results vs The Original Study

My results are slightly different from the author's — and I believe this is mainly due to differences in the raw data used and the data transformation process applied.

Unfortunately, I don’t know exactly which sources, cleaning steps or adjustments were made in the original study. However, the differences are minimal and absolutely reasonable given the context.

> For example:  
> - The author reported a Bitcoin CAGR of **103.2%** for the period Sep 2014 – Nov 2021.  
> - My replication resulted in a Bitcoin CAGR of **100.7%** for the same period.

Despite these small differences, the overall conclusions of the study remain consistent for the same time period.

---

## Main Findings

#### Finding 1  
**Strong outperformance of Bitcoin** over the observation period (Sep 2014 – Oct 2021).  
*(From the original study by Phillip Schottler)*

- Bitcoin’s average annual return: **+103.2%**  
- S&P 500: **+12.5%**  
- Gold: **+5.4%**  
- Over the entire period, Bitcoin’s value increased by a factor of **~160×**, compared to **2.3×** for the S&P 500 and **1.5×** for gold.

---

#### Updated Finding 1  
**Strong outperformance of Bitcoin** over the extended observation period (Sep 2014 – Feb 2025).  
*(Based on my own replication with extended data)*

- Bitcoin’s average annual return (CAGR): **+67.7%**  
- S&P 500 CAGR: **+13.7%**  
- Gold CAGR: **+8.4%**

- Over the full period:
  - Bitcoin: from **$386.94** to **$84,373.01** → **~218×**
  - S&P 500: from **23.26** to **88.71** → **~3.8×**
  - Gold: from **$1,207.83** to **$2,794.43** → **~2.3×**

<div align="center">
  <img src="/fig/FIG1.png" width="800">
</div>

##### Comment  
Bitcoin is a relatively new asset, and it's maturing over time. Naturally, its performance is starting to stabilize.

Still, an average return of **67.7% per year** over more than a decade is extremely unusual in financial markets.

Personally, I believe Bitcoin’s CAGR will keep decreasing progressively over the next few years.

It will likely stabilize once Bitcoin's market capitalization converges closer to that of gold.

#### Finding 2
**Rising popularity of Bitcoin** based on its trading volume.  
- Daily S&P 500 trading volume remained relatively stable, while Bitcoin’s trading volume grew sharply.  
- By late 2017, Bitcoin’s trading volume surpassed that of the S&P 500, at times exceeding it by **12.5×** in 2021.  
- **Caution**: Reported BTC trading volumes could be inflated; further data verification is recommended.

#### Finding 3
**Year-by-year outperformance** by Bitcoin.  
- Bitcoin outperformed both gold and the S&P 500 in **every** year except 2018.  
- Notable performances: **2017** (+1425%) and **2020** (+303%).

#### Finding 4
**Monthly returns distribution** shows Bitcoin’s **extreme volatility** and **fat tails**.  
- S&P 500 and gold exhibit a near-normal distribution.  
- Bitcoin’s distribution is much wider, with more frequent extreme outcomes, yet a **positive skew**.

#### Finding 5
**Risk vs. return metrics** confirm **Bitcoin’s high reward** and **high risk**:
- **Annualized volatility** ~82.5% for Bitcoin vs. ~14% for S&P 500.  
- **Max drawdown** of ~-83% for Bitcoin vs. ~-34% for S&P 500.  
- **Sharpe ratio** (0% risk-free): 1.3 (BTC) > 0.9 (S&P 500) > 0.4 (gold).  
- **Value-at-Risk (VaR 95%)** and **Expected Shortfall** also significantly higher for Bitcoin.

#### Finding 6
**Intraday trading range** is notably higher for Bitcoin, averaging **4.9%** vs. **1%** for S&P 500, with spikes reaching **30–40%**.

#### Finding 7
**No strong relationship with inflation**:
- Near-zero correlation between **Bitcoin** and **inflation**.  
- Bitcoin and S&P 500 have a moderate positive correlation (~0.3), limiting diversification benefits.  
- Gold remains somewhat negatively correlated with equities, thus helpful for diversification.

#### Finding 8
**Bitcoin returns under high inflation**:
- Splitting inflation data into high, medium, and low percentiles does not show any **significant** difference in BTC returns under high inflation.  
- Mean and median BTC returns were slightly **lower** during high-inflation months, and the **worst** negative outcome also occurred under high inflation.

### Selected Figures & Tables

#### Table: Asset Class Summary Statistics (2014–2021)

| **Index**                                          | **S&P 500** | **Gold** | **Bitcoin** |
|:--------------------------------------------------:|:----------:|:--------:|:-----------:|
| **Annual Return (in %)**                           | 12.6       | 5.4      | 103.2       |
| **Annual Volatility (in %)**                       | 14.4       | 12.6     | 82.5        |
| **Sharpe Ratio**                                   | 0.9        | 0.4      | 1.3         |
| **Max. Drawdown (mthly, in %)**                    | -20        | -16.1    | -76.4       |
| **Max. Drawdown (daily, in %)**                    | -33.9      | N/A      | -83         |
| **VaR(95) (in %)**                                 | -6.6       | -5.7     | -29.3       |
| **CVaR(95)/Expected Shortfall (in %)**             | -9.3       | -6.8     | -34         |

#### Table: Correlation Coefficients

| **Index**   | **S&P 500** | **Gold** | **Bitcoin** | **US CPI** |
|:-----------:|:----------:|:--------:|:-----------:|:----------:|
| **S&P 500** | 1          | -0.15    | 0.3         | 0.11       |
| **Gold**    | -0.15      | 1        | -0.01       | -0.08      |
| **Bitcoin** | 0.3        | -0.01    | 1           | 0.04       |
| **US CPI**  | 0.11       | -0.08    | 0.04        | 1          |

> **Bottom Line**:  
> - **Bitcoin** delivered **exponential returns** (2014–2021) but with **significant volatility** and **drawdown risk**.  
> - Its correlation with **inflation** is near **zero**, suggesting **no clear hedging** benefits.  
> - A **moderate positive correlation** with **equities** reduces its role as a diversifier compared to **gold** (which is somewhat negatively correlated).  
> - Historical performance does **not** guarantee future results—particularly with higher inflation observed post-2021, Bitcoin’s behavior could **change**.

---

## Disclaimer
**Not Financial Advice**  
All information in this repository is provided **solely** for educational and informational purposes. It does **not** constitute financial, legal, or any other professional advice. The cryptocurrency market is highly speculative and volatile. Always conduct your own due diligence and consider consulting a certified financial advisor before making any investment decisions.

---

## License
This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute the contents of this repository, provided the original copyright notice and license terms are retained.

---

**Thank you for reading!** Feel free to open an issue or submit a pull request if you have questions or suggestions.
