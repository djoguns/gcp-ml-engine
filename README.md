# gcp-ml-engine
My ML Engine noodlings

## Intro

* Assume you've set up your GCP Development Environment as per my tutorial.
* Assume that you're going to clone this repo.
* However also a good idea to create everything from scratch first time - a good way to learn!
* Python 3

### Tutorial

1. Check your current GCP configuration: `gcloud config list`
2. Create a GCP Project: `gcloud projects create --name my-ml-engine-project`
3. Switch to the project you just created: `gcloud config set project my-ml-engine-project-240909`
4. [Link the project to your billing account if appropriate](https://cloud.google.com/billing/docs/how-to/modify-project)
5. Create a GCP Bucket: `gsutil mb -p my-ml-engine-project-240909 -c regional -l europe-west2 gs://my-ml-engine-bucket/`
6. Enable the Compute Engine & ML Engine APIs: `gcloud services enable compute.googleapis.com ml.googleapis.com`
7. Clone this repo and cd into it:
8: Create an start a virtual environment: 
```bash
virtualenv ml-engine-tutorial-env
source ml-engine-tutorial-env/bin/activate
```
9. Install the required packages by running:

```bash
cd ml_model
pip3 install -r requirements.txt
```

10. In `vars.sh` create the following environment variables:

```bash

#!/bin/bash

export PROJECT_ID=my-ml-engine-project-240909
export BUCKET_NAME=my-ml-engine-bucket
export REGION=europe-west2
export TRAINER_PACKAGE_PATH=./census_training
export MAIN_TRAINER_MODULE=census_training.train
export JOB_DIR gs://my-ml-engine-bucket/scikit_learn_job_dir
export RUNTIME_VERSION 1.9
export PYTHON_VERSION 3.5 	

```

To execute this, run:

```bash
chmod +x vars.sh
source ./vars.sh
```

You can then check it's worked by running `echo BUCKET_NAME` and it should return the bucket name.

11 (Optional). If you want to run your environment in a Jupyter Notebook you should run: `ipython kernel install --user --name=ml-engine-tutorial-env`







### Useful Links

* [Cloud ML With Scikit-learn Notebook Tutorial](https://github.com/GoogleCloudPlatform/cloudml-samples/blob/master/notebooks/scikit-learn/Training%20with%20scikit-learn%20in%20CMLE.ipynb)
* [CloudML Runtime List](https://cloud.google.com/ml-engine/docs/scikit/runtime-version-list)
* [Scikit-learn ML Templates](https://github.com/GoogleCloudPlatform/cloudml-samples/tree/master/sklearn)
* [Tensorflow ML Templates](https://github.com/GoogleCloudPlatform/cloudml-samples/tree/master/tensorflow)
* [PyTorch ML Templates](https://github.com/GoogleCloudPlatform/cloudml-samples/tree/master/pytorch)



* [ML Engine Github Repo](https://github.com/GoogleCloudPlatform/cloudml-samples)
* [AI Platform Documentation](https://cloud.google.com/ml-engine/docs/scikit/)
* [Training Models using ML Engine](https://towardsdatascience.com/how-to-train-machine-learning-models-in-the-cloud-using-cloud-ml-engine-3f0d935294b3)
