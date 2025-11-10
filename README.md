# 📊 YouTube Trending Videos Analysis

## 🧠 Overview
This project analyzes a large-scale dataset of **YouTube trending videos** (~3.94 million rows across 113 countries).  
It explores trends across **languages, countries, engagement metrics, tags, and time**, offering a data-driven understanding of global video popularity and behavior on YouTube.

---

## 📂 Project Structure
```
YT-trending/
│
├──01_Dataset/          # Contains CSV or raw data files
|__02_preprocessing/    # Contains python notebooke preprocessing steps
|__03_Analysis/         # SQL Query analysis
├──04_Insights/         # Analysis summaries and additional reports
├──05_IMAGES/           # Visualizations, plots, and screenshots
|── README.md           # Project documentation (this file)
├── YT-trending.pbit    # Power BI Dashboard file
└── YT-trending.pdf     # PDF report version

```

---

## 📁 Dataset Information
- **Total Videos:** 3,940,573  
- **Columns:** 25  
- **Key Features:** `title`, `channel_name`, `view_count`, `like_count`, `comment_count`, `country_name`, `lang_category`, `publish_date`, `video_tags`, etc.

---

## 🌍 Global Insights

### 🔝 Top Trending Videos (Global)
| Video Title                         | Views (Approx.) |
|-------------------------------------|-----------------|
| Discord Loot Boxes are here         | 1.4B            |
| Pull The Rope Challenge             | 174M            |
| Squid Game Dalgona #shorts          | 171M            |
| Welcome to Noxus - Bite Marks       | 169M            |

- **Top Egypt Trending Content:** League of Legends & MrBeast videos.

---

## 🗣️ Language Insights
- **Distinct Languages:** 100+ (English, Spanish, Hindi, Arabic, French, etc.)  
- **Most-liked videos per language** show viral content diversity beyond English.  
- Some videos labeled *Unknown language* still received high engagement — a sign to review language-detection logic.

---

## 🌐 Country Insights
- **Most Trending Videos From:** Russia, Japan, Brazil, France, Thailand  
- **Average Likes per Country (examples):**  
  - 🇲🇾 Malaysia (~597K)  
  - 🇲🇹 Malta (~570K)  
  - 🇸🇻 El Salvador (~561K)  
- **Outlier Percentage:** 100% for all countries → indicates potential data anomaly; investigate outlier detection method.

---

## 💬 Engagement & Interaction
- **Missing Descriptions:** None (dataset shows no missing description values)  
- **Comment Rate:** Some NaN values present; handle when calculating comment-based metrics.  
- **Highest Engagement Categories:** Gaming 🎮 & Entertainment 🎭

---

## 📈 Rankings & Trends
- **Top by Country:** Highlights most-viewed videos within each region.  
- **Top by Language:** Reveals language-specific virality.  
- **Trending Period:** 1–38 days  
- **Highest Average Views (Longest Trend):** 38 days → ~22M views  
- **Highest Daily Movement (examples):**  
  - 🇷🇺 Russia (13.16)  
  - 🇺🇸 USA (9.11)  
  - 🇬🇧 UK (9.09)

---

## 📺 Channels
- **Most Multi-Country Channel:** *Skeleton Ninja* (trending in 21 countries)  
- Common top categories: **Gaming** and **Music**.

---

## 🏷️ Tags Analysis
- **Top Tags by Average Views (examples):**  
  - `diygames, forkids, kidsdiy, learn` → ~137M views  
  - `kids, fun, hack, parenting` → ~132M views

---

## 🧩 Key Observations
- English content dominates globally, but non-English viral videos are increasingly prominent.  
- Gaming, entertainment, and challenge videos consistently perform well.  
- Trending longevity (1–38 days) gives insight into content lifespan and decay.  
- The dataset size (3.94M rows) supports robust global and regional analyses — but watch for anomalies and missing-value patterns.

---

## ⚙️ Tools & Technologies
- **Python Libraries:** `pandas`, `numpy`, `matplotlib`, `seaborn`  
- **BI Tool:** Power BI (interactive dashboards)  
- **Database:** SQL Server (for storage & heavy querying)

---

## 📊 Potential Extensions
- Sentiment analysis on titles/descriptions.  
- Predictive modeling for video virality (time-series or classification).  
- Clustering analysis of engagement behavior.  
- Interactive Power BI dashboards by date, country, and tag.  
- Time-to-peak and decay-rate modeling per video.

---

## 🧪 Notes on Data Quality & Next Steps
- Investigate the "Outlier Percentage = 100%" result — likely a calculation or filtering bug.  
- Confirm language detection procedure and fix *Unknown language* labeling where possible.  
- Impute or handle NaNs in comment counts before computing engagement ratios.  
- If using SQL Server BULK operations, ensure file paths and permissions are correctly set.

---

## 👨‍💻 Author
**Ahmed Khaled**  
Data Analyst | Power BI | Python | SQL Server  
## 📧 Contact  
**Ahmed Ameen**  
📞 +20 128 232 9726  
✉️ [ahmedkhaledyt@gmail.com](mailto:ahmedkhaledyt@gmail.com)  
🔗 [www.linkedin.com/in/ahmed-ameen-003845303](https://www.linkedin.com/in/ahmed-ameen-003845303)


---

