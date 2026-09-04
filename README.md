# LeopardSeal-HabitatModel
Code used for developing a habitat model for Leopard seals on the Western Antarctic Peninsula

## Data availability

Some reference and environmental datasets referenced by the scripts in `Variables/Variables_data/` are too large and are excluded via `.gitignore`. See the download sources below:

- **GSHHG coastline data**
- **Shelf break (Antarctica, D'Amblas)**
- **GEBCO bathymetry**
- **Copernicus Marine environmental layers**: via `Variables/Variables_data/copernicus_data_setup.R`

## Workflow overview

1. **Raw tracking data** (`Raw_tracks_data/`) is processed into move persistence (`Move_persistence.Rmd`, `move_persistence_output/`).
2. **Behavioural states** are classified (`Behaviour/`) and simulated via correlated random walk (`Track_simulation/`).
3. **Environmental covariates** are extracted per track location (`Variables/Variables_code/`) and joined to tracks (`Variables/Variables_output/`).
4. **Combined analysis** is creation of an ensemble raster oa GAMM and GLMM.
5. **Prediction** builds spatial habitat prediction rasters and compares models (`Prediction/`).
