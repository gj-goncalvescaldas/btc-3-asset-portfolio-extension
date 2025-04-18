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
Welcome to this project analyzing **Bitcoin’s role in a 3-asset portfolio** alongside gold and the S&P 500. This work replicates and extends the findings of a published academic study using updated data through early 2025. While I hold a strong interest in Bitcoin, this is an **educational project**, not investment advice.

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

---

#### Finding 2
**Rising popularity of Bitcoin** based on its trading volume.  
- Daily S&P 500 trading volume remained relatively stable, while Bitcoin’s trading volume grew sharply.  
- By late 2017, Bitcoin’s trading volume surpassed that of the S&P 500, at times exceeding it by **12.5×** in 2021.  
- **Caution**: Reported BTC trading volumes could be inflated; further data verification is recommended.
---
#### Finding 3
##### Original Finding (Author)
> **Year-by-year outperformance by Bitcoin**  
>
> Bitcoin outperformed both gold and the S&P 500 in every year except **2018**.  
> Notable performances:  
> - **2017** → **+1425%**  
> - **2020** → **+303%**

##### Updated Finding 3 (Sep 2014 – Feb 2025)

As we can see in the next chart, Bitcoin continues to outperform both gold and S&P 500 in most of the years. However, we start to see a stabilization in the returns.

> Bitcoin outperformed both gold and the S&P 500 in every year except:
- **2018** → -74%
- **2022** → -64%
- **2025** → -10% (until Feb)

##### Notable Performances:
- **2017** → **+1369%**
- **2020** → **+303%**
- **2023** → **+155%**
- **2024** → **+121%**

## Chart: Annual Returns per Asset (2015 - Feb 2025)

![Fig. 3: Annual Returns per Asset](/fig/FIG3.png)

> Bitcoin remains the leader in performance, but its returns are progressively decreasing as the asset matures.  
> 📌 **Comment**: Anyone who entered the market in **November 13, 2021** would have had to wait until **February 2024** just to see Bitcoin return to the same value. Patience is key when dealing with such a volatile asset.

---
#### Finding 4
##### Original Finding (Author)

> **Monthly returns distribution** shows Bitcoin’s **extreme volatility** and **fat tails**.  
>
> - S&P 500 and gold exhibit a near-normal distribution.  
> - Bitcoin’s distribution is much wider, with more frequent extreme outcomes, yet a **positive skew**.

##### Updated Finding 4 (Sep 2014 – Feb 2025)

The behaviour of the monthly returns continues to be the same.  
Bitcoin shows much higher volatility compared to traditional assets like the S&P 500 and Gold.  

- S&P 500 → Returns concentrated between -5% and +5%.  
- Gold → Similar to S&P 500 but slightly wider spread.  
- Bitcoin → Extreme returns, both positive and negative, are much more frequent.

#### Chart: Distribution of Monthly Returns (Sep 2014 – Feb 2025)

![Fig. 4: Distribution of Monthly Returns](/fig/FIG4.png)

> 📌 **Comment**: Bitcoin is still far from behaving like a traditional asset in terms of volatility. Its monthly returns are completely out of scale compared to Gold or S&P 500. This confirms that Bitcoin is still a very speculative and volatile asset — suitable only for long-term investors who can tolerate these swings.
---
#### Finding 5
##### Original Finding (Author)

| **Index**                                          | **S&P 500** | **Gold** | **Bitcoin** |
|:--------------------------------------------------:|:----------:|:--------:|:-----------:|
| **Annual Return (in %)**                           | 12.6       | 5.4      | 103.2       |
| **Annual Volatility (in %)**                       | 14.4       | 12.6     | 82.5        |
| **Sharpe Ratio**                                   | 0.9        | 0.4      | 1.3         |
| **Max. Drawdown (mthly, in %)**                    | -20        | -16.1    | -76.4       |
| **Max. Drawdown (daily, in %)**                    | -33.9      | N/A      | -83         |
| **VaR(95) (in %)**                                 | -6.6       | -5.7     | -29.3       |
| **CVaR(95)/Expected Shortfall (in %)**             | -9.3       | -6.8     | -34         |

> **Risk vs. return metrics** confirm **Bitcoin’s high reward** and **high risk**:
> - **Annualized volatility** ~82.5% for Bitcoin vs. ~14% for S&P 500.  
> - **Max drawdown** of ~-83% for Bitcoin vs. ~-34% for S&P 500.  
> - **Sharpe ratio** (0% risk-free): 1.3 (BTC) > 0.9 (S&P 500) > 0.4 (gold).  
> - **Value-at-Risk (VaR 95%)** and **Expected Shortfall** also significantly higher for Bitcoin.

##### Updated Finding 5 (Sep 2014 – Feb 2025)

| **Index**                                          | **S&P 500** | **Gold** | **Bitcoin** |
|:--------------------------------------------------:|:----------:|:--------:|:-----------:|
| **Annual Return (in %)**                           | 13.7       | 8.4      | 67.7        |
| **Annual Volatility (in %)**                       | 12.4       | 13.8     | 74.5        |
| **Sharpe Ratio**                                   | 1.1        | 0.7      | 1.0         |
| **Max. Drawdown (mthly, in %)**                    | -14.1      | -17.4    | -75.6       |
| **Max. Drawdown (daily, in %)**                    | -33.9      | N/A      | -83.0       |
| **VaR(95) (in %)**                                 | -4.9       | -5.5     | -23.9       |
| **CVaR(5) / Expected Shortfall (in %)**            | -6.4       | -6.6     | -32.5       |

> 📌 **Comment**:  
> Bitcoin keeps showing the same pattern: extremely high returns but also extreme volatility and drawdowns.  

> My results are slightly different from the original study, probably because of the data used and the transformations applied. But the general conclusion remains the same:  
> - High returns → High volatility → High risk.

> Another interesting point:  
> - S&P 500 improved its Sharpe ratio in this extended period.  
> - Gold remains the defensive asset with low returns but stable behaviour.  
> - Bitcoin’s CAGR (67.7%) shows a significant decrease compared to the early period (103.2%), confirming the maturation of the asset.

---
#### Finding 6
##### Original Finding (Author)

> **Intraday trading range** is notably higher for Bitcoin, averaging **4.9%** vs. **1%** for S&P 500, with spikes reaching **30–40%**.

> The author used daily data to calculate this metric.

##### Updated Finding 6 (Sep 2014 – Feb 2025)

In my case, since I worked with **monthly data** for consistency across all assets, I approximated the intraday range using the **High - Low** of each day aggregated monthly.

This is not exactly the same as the daily intraday range used by the author, but it still captures the relative volatility behaviour of the assets.

| Asset     | Long-term avg. Intraday Range |
|-----------|-------------------------------|
| S&P 500   | **6.94%**                    |
| Bitcoin   | **31.15%**                   |

##### Chart: Intraday trading ranges (monthly data approximation)

![Fig. 6: Intraday trading ranges (monthly data approximation)](/fig/FIG6.png)

##### Comments & Interpretation:
- Bitcoin continues to show a much higher intraday volatility compared to S&P 500.
- However, there is a clear pattern of stabilization from **2021** onwards for both assets.
- Bitcoin's intraday range has progressively decreased, moving towards a more "mature asset" behaviour.
- The S&P 500 also experienced higher ranges during stress periods (2018, 2020 COVID crisis), but its long-term average remains significantly lower.

---
#### Finding 7
##### Original Finding (Author)

> **Correlation Coefficients (2014–2021)**  
>
> | Index      | S&P 500 | Gold   | Bitcoin | US CPI |
> |------------|---------|--------|---------|--------|
> | S&P 500    | 1       | -0.15  | 0.30    | 0.11   |
> | Gold       | -0.15   | 1      | -0.01   | -0.08  |
> | Bitcoin    | 0.30    | -0.01  | 1       | 0.04   |
> | US CPI     | 0.11    | -0.08  | 0.04    | 1      |

> - Bitcoin and S&P 500 show a moderate positive correlation (~0.30).  
> - Bitcoin and Gold are almost uncorrelated.  
> - Bitcoin and US CPI (inflation) correlation is nearly zero.

##### Updated Finding 7 (Sep 2014 – Feb 2025)

| Index      | S&P 500 | Gold   | Bitcoin | US CPI |
|------------|---------|--------|---------|--------|
| S&P 500    | 1.00    | -0.04  | 0.37    | -0.02  |
| Gold       | -0.04   | 1.00   | 0.08    | -0.13  |
| Bitcoin    | 0.37    | 0.08   | 1.00    | -0.04  |
| US CPI     | -0.02   | -0.13  | -0.04   | 1.00   |

## Chart: Correlation Coefficients (Sep 2014 – Feb 2025)

![Fig. 8: Correlation coefficients](/fig/FIG7.png)

### Key Insights:

| Relation | Comment | Change vs Author |
|----------|---------|------------------|
| Bitcoin vs S&P 500 | The correlation increased from **0.30** to **0.37** | Bitcoin is behaving more like a risk-on asset |
| Bitcoin vs Gold | Slight increase from **-0.01** to **0.08** | Still uncorrelated |
| Bitcoin vs US CPI | Dropped from **0.04** to **-0.04** | Confirmed: No inflation hedge behaviour |

> 📌 **Comment**:  
As Bitcoin matures and integrates into traditional finance, its correlation with the stock market (S&P 500) is increasing. On the other hand, its correlation with inflation (CPI) remains almost zero or even slightly negative, reinforcing that Bitcoin has not been acting as a short-term inflation hedge during this period.

---
#### Finding 8
##### Original Finding (Author)

> **Bitcoin returns under high inflation**:  
> Splitting inflation data into high, medium, and low percentiles does **not** show any **significant** difference in BTC returns under high inflation.  
> Mean and median BTC returns were **slightly lower** during high-inflation months, and the **worst** negative outcome also occurred under high inflation.

##### Updated Finding 8 (Sep 2014 – Feb 2025)

![Fig. 9: Monthly Bitcoin returns by inflation percentiles](/fig/FIG9.png)

This boxplot divides Bitcoin monthly returns into 3 groups depending on the **US CPI (month-over-month)** percentiles:
- **High CPI (top 10%)**
- **Medium CPI**
- **Low CPI (bottom 10%)**

#### Key Observations:
- During **high inflation months**, the **median return is lower** than in other periods.
- The **largest negative outliers** (worst returns) also occurred during high CPI.
- **Medium CPI** months actually show the **best performance** on average.
- **Low CPI** months are positive, but less than medium.

📌 **Interpretation**:  
While not statistically dramatic, there is a clear **tendency for Bitcoin to struggle more in very high inflation periods**.

This confirms the author’s conclusion that:  
> Bitcoin is **not** a strong inflation hedge.


---

## Key Differences vs The Original Study

After extending the dataset from November 2021 to February 2025, several important differences emerged between my analysis and the original study by Phillip Schottler.

### 1. Bitcoin CAGR has decreased significantly
| Period | Bitcoin CAGR |
|--------|--------------|
| Sep 2014 – Nov 2021 | 103.2% (Author) / 100.7% (Mine) |
| Sep 2014 – Feb 2025 | 67.7% (Mine) |

- Bitcoin's extraordinary returns from its early years are clearly fading.
- The decrease in CAGR is logical as the asset matures and grows in market capitalization.

---

### 2. Bitcoin’s Volatility is Stabilizing
| Period | Bitcoin Volatility (Annualized) |
|--------|---------------------------------|
| Sep 2014 – Nov 2021 | 82.5% (Author) |
| Sep 2014 – Feb 2025 | 74.5% (Mine) |

- Bitcoin’s volatility remains extremely high, but it shows a decreasing trend over time.
- The asset is becoming less explosive but still far from traditional asset behavior.

---

### 3. Increased Correlation with Equities (S&P 500)
| Relation | Original Study (2014-2021) | Extended (2014-2025) |
|----------|------------------------------|------------------------|
| BTC vs S&P 500 | 0.30 | 0.37 |

- Bitcoin is behaving increasingly like a *risk-on* asset.
- Correlation with gold remains low.
- Correlation with inflation (CPI) is practically zero or slightly negative.

---

### 4. Bitcoin Performance is Worse During High Inflation
- The worst Bitcoin monthly returns happened during the highest inflation months.
- This confirms Bitcoin is **not** behaving as an inflation hedge in the short-term.

---

### 5. S&P 500 Sharpe Ratio Improved
| Period | S&P 500 Sharpe Ratio |
|--------|-----------------------|
| Sep 2014 – Nov 2021 | 0.9 (Author) |
| Sep 2014 – Feb 2025 | 1.1 (Mine) |

- S&P 500 showed better risk-adjusted returns during the extended period.
- Gold remained stable with low returns but defensive characteristics.

---

### Final Thought
> Bitcoin remains a unique asset:  
> - Outstanding long-term returns.  
> - Huge volatility and risk.  
> - Poor short-term inflation hedge.  
> - Increasingly correlated with equity markets.  

This evolution reinforces the idea that Bitcoin is transitioning from a speculative niche asset towards a more integrated — but still highly volatile — component of financial markets.

---

## Disclaimer
**Not Financial Advice**  
All information in this repository is provided **solely** for educational and informational purposes. It does **not** constitute financial, legal, or any other professional advice. The cryptocurrency market is highly speculative and volatile. Always conduct your own due diligence and consider consulting a certified financial advisor before making any investment decisions.

---

## License
This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute the contents of this repository, provided the original copyright notice and license terms are retained.

---

**Thank you for reading!** Feel free to open an issue or submit a pull request if you have questions or suggestions.
