#options(repos = c(CRAN = "https://cloud.r-project.org"))
#install.packages("ncdf4")

library(ncdf4)

setwd("~/2026_Project")

nc <- nc_open("cmems_mod_glo_phy_my_0.083deg_P1D-m_multi-vars_71.00W-30.00W_66.00S-54.00S_0.49-109.73m_2018-01-01-2019-10-31.nc")

sea_temp <- ncvar_get(nc, "thetao")
ice_area  <- ncvar_get(nc, "siconc")
ice_thick <- ncvar_get(nc, "sithick")
bottom_temp <- ncvar_get(nc, "bottomT")
lon <- ncvar_get(nc, "longitude")
lat <- ncvar_get(nc, "latitude")
time <- ncvar_get(nc, "time")

library(ggplot2)
library(dplyr)


#depth first level
#time first day
temp_surface <- sea_temp[, , 1, 1]

#plot
df <- expand.grid(lon = lon, lat = lat)

df$sea_temp <- as.vector(temp_surface)

ggplot(df, aes(x = lon, y = lat, fill = sea_temp)) +
  geom_raster() +
  coord_fixed() +
  scale_fill_viridis_c(option = "plasma") +
  labs(
    title = "Sea Temperature (Surface)",
    x = "Longitude",
    y = "Latitude",
    fill = "°C"
  )

