= Methods

== Data

- *Satellite LSWT products:*
  - ESA CCI LSWT
  - (GloboLakes)
  - (ARC-Lake)
- *Reanalysis:*
  - ERA5-Land lake mixed-layer temperature
- *Climate / teleconnection indices:*
  - PDO
  - ENSO
  - AMO (and others if used)
- *Lake attributes:*
  - Depth, latitude, elevation, area
  - Mixing regime (and other morphology/setting variables as available)
- *Ecological / human ancillary data (if used):*
  - Bloom indicators, dissolved oxygen, ice phenology, habitat metrics
  - Population / human pressure metrics

== Temporal framework

- *Predefined periods:*
  - Pre-hiatus: [start year]–1998 (e.g. 1986–1998)
  - Hiatus: 1998–2012
  - Post-hiatus: 2012–[end year, e.g. 2024]
- *Data-driven refinement:*
  - Regime shift detection using STARS around:
    - 1998 (pre → hiatus)
    - 2012 (hiatus → post)
  - Window size: [e.g. ±3 years]

== Preprocessing and quality control

- Temporal aggregation: [e.g. annual/seasonal means]
- Spatial aggregation:
  - Per-lake time series and/or gridded fields
- Data screening:
  - Minimum record length per period
  - Missing data thresholds
  - Outlier detection and removal
- Cross-dataset consistency checks and harmonization

== Trend estimation and testing

- For each period and lake/grid cell:
  - Linear trend estimation
  - Non-parametric trend estimation (Sen's slope)
  - Trend significance testing (Mann–Kendall test)
- Multiple testing considerations:
  - [e.g. FDR correction, spatial false discovery control]

== Spatial pattern and grouping

- Construction of trend maps for each period
- Lake grouping by:
  - Latitude bands
  - Elevation classes
  - Depth / size classes
  - Mixing regime
- Optional dimensionality reduction:
  - EOF / PCA on LSWT trends or anomalies

== Teleconnection and driver analysis

- *Correlation analysis:*
  - LSWT trends / anomalies vs PDO/ENSO/AMO (with/without lags)
- *Regression / attribution:*
  - Multiple regression models combining:
    - Teleconnection indices
    - Lake attributes
  - Random forest (or other ML) to rank driver importance
- *Assessment of PDO/ENSO phase shifts:*
  - Relation to changes in LSWT trend magnitude and sign

== 2015–2018 plateau assessment

- *Short-window trend analysis:*
  - 3–5-year running trends in LSWT
  - Comparison of 2015–2018 window to adjacent windows
- *Spatial characterization:*
  - Fraction of lakes / regions showing near-zero or negative short-term trends
- *Relation to internal variability:*
  - Association with ENSO events (e.g. strong El Niño)