system("which conda")
system("which mamba")
system("conda info --envs")
system("ls ~")
system("ls ~/miniforge3")
system("ls ~/mambaforge")
system("ls ~/micromamba")
system("source ~/miniforge3/etc/profile.d/conda.sh && conda --version")
system("~/miniforge3/bin/conda --version")
system("~/miniforge3/bin/conda env list")
system("~/miniforge3/bin/conda run -n copernicus_env python --version")
system("~/miniforge3/bin/conda env list")
system("~/miniforge3/bin/conda run -n copernicus python --version")
system("~/miniforge3/bin/conda list -n copernicus")
system("~/miniforge3/bin/conda install -n copernicus python=3.10 -c conda-forge -y")
system("~/miniforge3/bin/conda run -n copernicus python --version")
system("~/miniforge3/bin/conda install -n copernicus -c conda-forge copernicusmarine -y")
system("~/miniforge3/bin/conda run -n copernicus copernicusmarine --version")





path_copernicusmarine <- "~/miniforge3/bin/conda"

output_directory <- "/home2/ISAD/em1105/2026_Project/Variables"
dir.create(output_directory, showWarnings = FALSE, recursive = TRUE)

command <- paste(
  "~/miniforge3/bin/conda run -n copernicus copernicusmarine subset",
  "--dataset-id cmems_mod_glo_phy_my_0.083deg_P1D-m",
  "--variable siconc",
  "--variable sithick",
  "--variable mlotst",
  "--variable thetao",
  "--variable uo",
  "--variable vo",
  "--variable zos",
  "--minimum-longitude -94",
  "--maximum-longitude -20",
  "--minimum-latitude -85",
  "--maximum-latitude -52",
  "--start-datetime 2018-01-01T00:00:00",
  "--end-datetime 2019-10-31T00:00:00",
  "--minimum-depth 0.49402499198913574",
  "--maximum-depth 0.49402499198913574",
  "-o", shQuote(output_directory),
  sep = " "
)

system(command)



