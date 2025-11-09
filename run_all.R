# run_all.R
# Orchestrator to run most scripts and produce outputs

scripts <- c(
  'generate_sample_data.R',
  'load_and_preview.R',
  'product_summary.R',
  'sales_time_series.R',
  'customer_segmentation.R',
  'cohort_analysis.R',
  'recommend_simple.R'
)

for (s in scripts) {
  cat('Running', s, '...\n')
  source(s)
}

cat('All scripts executed. Check the output/ and data/ directories.\n')
