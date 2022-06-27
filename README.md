# CloudRun Jobs, PubSub terraform

## Architecture

![architecture](https://user-images.githubusercontent.com/41711526/175954352-2b464e88-9acd-463a-9401-05c5bc67f258.png)

## Usage

```bash
terraform init
terraform apply
```

api

```bash
git clone https://github.com/GoogleCloudPlatform/nodejs-docs-samples.git
cd nodejs-docs-samples/run/pubsub/
gcloud builds submit --tag gcr.io/PROJECT_ID/pubsub
```

CloudRun Jobs

```bash
git clone https://github.com/GoogleCloudPlatform/jobs-demos.git
cd screenshot
gcloud builds submit -t $REGION-docker.pkg.dev/$PROJECT_ID/containers/screenshot
gcloud iam service-accounts create screenshot-sa --display-name="Screenshot app service account"
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --role roles/storage.admin \
  --member serviceAccount:screenshot-sa@$PROJECT_ID.iam.gserviceaccount.com
```

create job

```bash
gcloud beta run jobs create screenshot \
  --image=$REGION-docker.pkg.dev/$PROJECT_ID/containers/screenshot:v1 \
  --args="screenshot.js" \
  --args="https://example.com" \
  --args="https://cloud.google.com" \
  --tasks=2 \
  --task-timeout=5m \
  --set-env-vars=BUCKET_NAME=screenshot-$PROJECT_ID \
  --service-account=screenshot-sa@$PROJECT_ID.iam.gserviceaccount.com
```

execute job

```
gcloud beta run jobs execute screenshot
```
