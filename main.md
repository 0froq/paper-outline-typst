---
authors:
  - name: froQ
    affiliations: [1]
affiliations:
  - id: 1
    department: A Department
    institution: An Institution
    address: An Address
title: ...Global lake surface warming across pre-hiatus, hiatus and post-hiatus periods...
created: 2026-04-01
status: draft
last_modified: 2026-04-09 18:04:18
keywords:
  - lake surface water temperature
  - global warming hiatus
  - ...
---

## Intro

- Context:
  - Global warming and reported "hiatus" and "post-hiatus" phases
    in surface air temperature
  - Ongoing debate on magnitude, timing and mechanisms of hiatus/post-hiatus
- Gap:
  - Limited understanding of how LSWT responds to these phases
    at the global scale
  - Lack of consistent multi-period, multi-dataset assessment of LSWT trends
  - Insufficient characterization of spatial heterogeneity and drivers
    (climate vs lake-specific)
- Aim (high-level):
  - Place global LSWT within the (pre-hiatus/)hiatus/post-hiatus framework
  - Quantify and compare LSWT trends across these three periods
  - Identify key climatic and lake-specific controls behind these trends
  - (Explore ecological implications if data allows)
  - (Explain the 2015-2018 platform if it is real and explorable and worthy of attention)


## Methods

- Data:
  - Satellite LSWT products:
    - ESA CCI LSWT
    - (GloboLakes)
    - (ARC-Lake)
  - Reanalysis:
    - ERA5-Land lake mixed-layer temperature
  - Climate / teleconnection indices:
    - PDO
    - ENSO
    - AMO (and others if used)
  - Lake attributes:
    - Depth, latitude, elevation, area
    - Mixing regime (and other morphology/setting variables as available)
  - Ecological / human ancillary data (if used):
    - Bloom indicators, dissolved oxygen, ice phenology, habitat metrics
    - Population / human pressure metrics

- Temporal framework:
  - Predefined periods:
    - Pre-hiatus: [start year]–1998 (e.g. 1986–1998)
    - Hiatus: 1998–2012
    - Post-hiatus: 2012–[end year, e.g. 2024]
  - Data-driven refinement:
    - Regime shift detection using STARS around:
      - 1998 (pre → hiatus)
      - 2012 (hiatus → post)
    - Window size: [e.g. ±3 years]

- Preprocessing and quality control:
  - Temporal aggregation: [e.g. annual/seasonal means]
  - Spatial aggregation:
    - Per-lake time series and/or gridded fields
  - Data screening:
    - Minimum record length per period
    - Missing data thresholds
    - Outlier detection and removal
  - Cross-dataset consistency checks and harmonization

- Trend estimation and testing:
  - For each period and lake/grid cell:
    - Linear trend estimation
    - Non-parametric trend estimation (Sen’s slope)
    - Trend significance testing (Mann–Kendall test)
  - Multiple testing considerations:
    - [e.g. FDR correction, spatial false discovery control]

- Spatial pattern and grouping:
  - Construction of trend maps for each period
  - Lake grouping by:
    - Latitude bands
    - Elevation classes
    - Depth / size classes
    - Mixing regime
  - Optional dimensionality reduction:
    - EOF / PCA on LSWT trends or anomalies

- Teleconnection and driver analysis:
  - Correlation analysis:
    - LSWT trends / anomalies vs PDO/ENSO/AMO (with/without lags)
  - Regression / attribution:
    - Multiple regression models combining:
      - Teleconnection indices
      - Lake attributes
    - Random forest (or other ML) to rank driver importance
  - Assessment of PDO/ENSO phase shifts:
    - Relation to changes in LSWT trend magnitude and sign

- 2015–2018 plateau assessment:
  - Short-window trend analysis:
    - 3–5-year running trends in LSWT
    - Comparison of 2015–2018 window to adjacent windows
  - Spatial characterization:
    - Fraction of lakes / regions showing near-zero or negative short-term trends
  - Relation to internal variability:
    - Association with ENSO events (e.g. strong El Niño)


## Results

- Global LSWT trends by period:
  - Pre-hiatus:
    - Direction and magnitude of global median LSWT trend
    - Spatial extent of significant warming/cooling
  - Hiatus:
    - Change in trend magnitude relative to pre-hiatus
    - Regions showing slowdown or stabilization
  - Post-hiatus:
    - Evidence for re-acceleration or further slowdown
    - Differences in trend magnitude vs pre-hiatus and hiatus
  - Statistical comparison:
    - Fraction of lakes / grid cells with significantly different trends between periods

- Spatial heterogeneity:
  - Regions with synchronized enhancement:
    - e.g. high-latitude / mid-latitude / specific continental regions
  - Regions with divergent behaviour:
    - e.g. deep tropical lakes, high-altitude basins, arid-region lakes
  - Lake-type contrasts:
    - Deep vs shallow lakes
    - Mixed vs stratified lakes
    - High vs low elevation / latitude classes

- 2015–2018 plateau:
  - Global signal:
    - Presence or absence of a statistically distinct plateau in LSWT
    - Comparison to expected internal variability
  - Regional / lake-type expression:
    - Regions or lake types where plateau is most evident or absent
  - Association with internal climate modes:
    - Relation to ENSO events or combined teleconnection phases

- Teleconnections and physical drivers:
  - Teleconnections:
    - Correlation patterns between LSWT and PDO/ENSO/AMO across periods
    - Role of phase shifts in explaining inter-decadal changes in LSWT trends
  - Lake attributes:
    - Relative importance of depth, latitude, elevation, mixing regime, etc.
    - Interactions between large-scale modes and local attributes
  - Physical mechanisms (interpretation level):
    - Contributions from stilling, ice-cover shortening, stratification changes
    - Regional differences in dominant mechanisms

- Ecological extensions (if included):
  - Associations between LSWT change and:
    - Bloom occurrence
    - Dissolved oxygen trends
    - Ice phenology shifts
    - Habitat suitability for key taxa
  - Evidence for lagged responses (if analysed)
  - Spatial variation in ecological sensitivity to LSWT trends


## Conclusions

- Period-dependent LSWT regimes:
  - LSWT exhibits distinct warming regimes across pre-hiatus, hiatus and post-hiatus periods
  - Differences are statistically significant over a substantial fraction of lakes / regions
- Spatial heterogeneity:
  - LSWT does not follow a globally uniform hiatus/post-hiatus pattern
  - Strong spatial contrasts highlight the importance of regional context and lake type
- Drivers and mechanisms:
  - Interplay between internal climate variability (PDO/ENSO/AMO) and external forcing
  - Lake-specific attributes critically modulate LSWT responses to large-scale climate modes
- Implications:
  - Lakes are an integral, but non-uniform, component of the hiatus/post-hiatus climate story
  - Identification of vulnerable lake types and regions informs ecological risk assessment and management
  - Results motivate further work on process-based modelling and ecological impact pathways


## (Optional) One-sentence summary

- Template:
  - "Global lake surface water temperature exhibits [describe behaviour: e.g. distinct pre-hiatus, hiatus and post-hiatus warming regimes with strong spatial heterogeneity], driven by the interplay between [internal climate variability] and [lake-specific attributes], with important implications for [freshwater ecosystems / management]."
