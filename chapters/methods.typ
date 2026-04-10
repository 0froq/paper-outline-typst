= Methods

== Data

- *LSWT products*
  - #link("https://cds.climate.copernicus.eu/datasets/satellite-lake-water-temperature?tab=overview")[
      ESA CCI LSWT] \
    0.05 $degree$ resolution,
    1995–2020,
    #highlight()[\~800 lakes globally]
    #footnote()[
      This number might be not accurate,
      since I only download the 15th of each month for the preliminary analysis.
    ],
    *lots of missing data*.
  - (GloboLakes)
  - (ARC-Lake)
- (*Reanalysis*)
  - ERA5-Land lake mixed-layer temperature \
    great temporal coverage but coarse spatial resolution and
    not a direct LSWT product
- (*Climate / teleconnection indices*)
  - PDO. #highlight()[A phase shift around 2017]
    #footnote()[
      PDO is negtive and keeps decreasing after 2017,
      but the temperature keeps increasing,
      which means the PDO phase is not a main driver of the warming, and even,
      the direction is opposite. Worth to be explored and discussed.
    ].
  - ENSO
  - AMO
  - (and others if used)
- *Lake attributes*
  - Depth, latitude, elevation, area
  - Mixing regime (and other morphology/setting variables as available)
  - Other attributes in ERA5-Land
- (*Ecological / human ancillary data)*
  - Bloom indicators, dissolved oxygen, ice phenology, habitat metrics
  - Population / human pressure metrics

== Temporal framework

- *Predefined periods:*
  - Pre-hiatus: 1986 – 1998 (\~12 years)
  - Hiatus: 1998 – 2012 (\~14 years)
  - Post-hiatus: 2012 – 2024 (\~12 years)
- *Data-driven refinement:*
  - Regime shift detection using STARS around:
    - 1998 (pre → hiatus)
    - 2012 (hiatus → post)
  - Window size: #sym.plus.minus 3 years

== Preprocessing and quality control

- Temporal aggregation: annual means / seasonal means + STL decomposition
- *Per-lake* time series
- Data screening: 
  - Missing data thresholds
  - Outlier detection and removal
  - ...blabla
- (Cross-dataset consistency checks and harmonization) \
  (if we use multiple LSWT products)

== Trend estimation and testing

- For each period and lake
  - Linear trend
  - Sen's slope (non-parametric)
  - Mann–Kendall test (trend significance)
- Multiple testing considerations
  - (FDR correction? spatial false discovery control?)

== Spatial pattern and grouping

- *Trend maps / Delta trend maps* for each period
- Lake grouping by
  - Latitude bands
  - Elevation classes
  - Depth / size classes
  - #highlight()[Mixing regime]
    #footnote()[
      Seriously can we get the mixing regime for all the lakes?
]
- (Optional dimensionality reduction)
  - #highlight()[EOF]
    #footnote()[
      If we have enough lakes and spatial coverage.
      Or we can do it for subsets, e.g., by region.
    ] / PCA on LSWT trends or anomalies

== Teleconnection and driver analysis

- *Correlation analysis*
  - LSWT trends / anomalies vs PDO/ENSO/AMO (with/without *lags*)
- *Regression / attribution*
  - Multiple regression models combining:
    - Teleconnection indices
    - Lake attributes
  - Random forest (or other *ML*) to rank driver importance
- *Assessment of PDO/ENSO phase shifts*
  - Relation to changes in LSWT trend magnitude and sign

== (2015–2018 plateau assessment)

- *Short-window trend analysis*
  - #highlight()[3–5-year running trends in LSWT]
    #footnote()[
      Implemented in other studies to detect the "hiatus"
    ].
  - Comparison of 2015–2018 window to adjacent windows
- *Spatial characterization*
  - Fraction of lakes / regions showing
    #highlight()[near-zero or negative]
    #footnote()[
      As far as I can tell, pretty much most of the lakes do so.
]
- *Relation to internal variability:*
  - Association with ENSO events (e.g. strong El Niño in 2015-2016)

