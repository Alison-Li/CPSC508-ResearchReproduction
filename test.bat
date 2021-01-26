@ECHO OFF
:: Runs the Comprestimator on the external drive, writing the output to a CSV file/
:: Experiment for empty drive test
setLocal enableDelayedExpansion
SET /A n=1
FOR /L %%A IN (1,1,300) DO (
  :: 2 is the correspoding number of the external drive.
  :: SVC is the storage system type.
  :: Set the name of the CSV file to store the output in.
  comprestimator -n 2 -s SVC -c test1_result!n!
  SET /A n+=1
)
copy *.csv test1_combined_results
PAUSE