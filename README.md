# zoomcamp-module-three-homework

**Question 1. Counting records**

<img width="631" height="730" alt="1" src="https://github.com/user-attachments/assets/5e9bb5c2-749a-406d-a4d4-bb5ffc6046e7" />

Answer: 20,332,093

**Question 2. Data read estimation**

<img width="899" height="1171" alt="2" src="https://github.com/user-attachments/assets/1c83e204-80dc-4a1d-81e6-0add628107c1" />
<img width="947" height="1166" alt="2 1" src="https://github.com/user-attachments/assets/8944d1c0-2bd8-461e-8342-2c616060960f" />

Answer: 0 MB for the External Table and 155.12 MB for the Materialized Table

**Question 3. Understanding columnar storage**

<img width="788" height="1203" alt="3" src="https://github.com/user-attachments/assets/d4bf6ac1-c72a-4461-8e97-ddb32ab5889c" />
<img width="1139" height="1204" alt="3 1" src="https://github.com/user-attachments/assets/1866d4ab-3936-40e7-80ff-720a4cb802fa" />

Answer: BigQuery is a columnar database, and it only scans the specific columns requested in the query. Querying two columns (PULocationID, DOLocationID) requires reading more data than querying one column (PULocationID), leading to a higher estimated number of bytes processed.

**Question 4. Counting zero fare trips**

<img width="997" height="750" alt="4" src="https://github.com/user-attachments/assets/d9e4d75f-c941-48b7-b73b-f30e72e7a1d1" />

Answer: 8,333

**Question 5. Partitioning and clusterin**g

<img width="951" height="127" alt="5" src="https://github.com/user-attachments/assets/374586c8-b750-4ae1-b771-bedce5d35f7d" />

Answer: Partition by tpep_dropoff_datetime and Cluster on VendorID

**Question 6. Partition benefits**

<img width="1254" height="1188" alt="6" src="https://github.com/user-attachments/assets/04cae2de-b1da-4d50-82ad-42540fd40331" />
<img width="1280" height="1194" alt="6 1" src="https://github.com/user-attachments/assets/2f40492f-b34f-4143-980f-06edf83fbb56" />

Answer: 310.24 MB for non-partitioned table and 26.84 MB for the partitioned table

**Question 7. External table storage**

<img width="1331" height="564" alt="7" src="https://github.com/user-attachments/assets/6dc5fb6a-d652-44f5-91e9-f93b7c79c2d4" />

Answer: GCP Bucket

**Question 8. Clustering best practices**

Answer: False.

Not always as it depends on how big the table is and how often do we filter or group by the same columns.

**Question 9. Understanding table scans**'

<img width="691" height="1189" alt="9" src="https://github.com/user-attachments/assets/1805474d-f0ab-4f17-bd23-7c5a53e9a073" />

Answer: 0 B - For COUNT(*) Bigquery doesn't read any rows, instead it reads the number of rows from the table's metadata.






How to run:

    Install gcp cli:
        curl -sSL https://sdk.cloud.google.com | bash

    Login to GCP:
        gcloud auth login
        gcloud auth application-default login

    Build docker image:
        docker build -t yellow-taxi-gcs .

    Run docker:
        docker run --rm \
        -v $HOME/.config/gcloud:/root/.config/gcloud \
        yellow-taxi-gcs        
