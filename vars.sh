#!/bin/zsh

export PROJECT_ID=my-ml-engine-project-240909
export BUCKET_NAME=my-ml-engine-bucket
export REGION=europe-west2
export TRAINER_PACKAGE_PATH=./census_training
export MAIN_TRAINER_MODULE=census_training.train
export JOB_DIR=gs://my-ml-engine-bucket/scikit_learn_job_dir
export RUNTIME_VERSION=1.9
export PYTHON_VERSION=3.5