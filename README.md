# TEST_ctf_data
This data is downsampled sections of CTF data

## To Use in code
Within your code's test folder run the following command.  Then do git status and add the new submodule link to a commit.  
```
git submodule add https://github.com/nih-megcore/TEST_ctf_data.git test_data
```
## Pull your code and testing data
```
git clone --recurse-submodules YOUR_CODE_REPO
```


# This was created using the following function
(its messy but it should be reproducible)
## Pull from OpenNeuro
```
datalad install https://github.com/OpenNeuroDatasets/ds004215.git
cd ds004215
git checkout 1.0.2
cd ds004215/sub-ON02747/ses-01/meg
datalad get *.ds
```

### CTF functions
```
newDs -resample 4 -time 100 160 /data/ds004215/sub-ON02747/ses-01/meg/sub-ON02747_ses-01_task-airpuff_run-01_meg.ds /data/ds004215/sub-ON02747_ses-01_task-airpuff_run-01_meg.ds
newDs -resample 4 -time 100 160 /data/ds004215/sub-ON02747/ses-01/meg/sub-ON02747_ses-01_task-haririhammer_run-01_meg.ds /data/ds004215/sub-ON02747_ses-01_task-haririhammer_run-01_meg.ds

mkdir -p ../PREBIDS/20010101
mv sub-ON02747_ses-01_task-* ../PREBIDS/20010101/
cd ../PREBIDS/20010101/
mvDs sub-ON02747_ses-01_task-airpuff_run-01_meg.ds  ABABABAB_airpuff_20010101_001.ds
mvDs sub-ON02747_ses-01_task-haririhammer_run-01_meg.ds  ABABABAB_haririhammer_20010101_002.ds
```

