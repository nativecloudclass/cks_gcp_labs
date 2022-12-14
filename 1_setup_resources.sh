# CREATE cks-master VM using gcloud command
# not necessary if created using the browser interface
gcloud compute instances create cks-master --zone=europe-west3-c \
--machine-type=e2-medium \
--image=ubuntu-2004-focal-v20220419 \
--image-project=ubuntu-os-cloud \
--boot-disk-size=50GB

# CREATE cks-worker VM using gcloud command
# not necessary if created using the browser interface
gcloud compute instances create cks-worker --zone=europe-west3-c \
--machine-type=e2-medium \
--image=ubuntu-2004-focal-v20220419 \
--image-project=ubuntu-os-cloud \
--boot-disk-size=50GB

# you can use a region near you
https://cloud.google.com/compute/docs/regions-zones


# INSTALL cks-master
gcloud compute ssh cks-master
sudo -i
curl https://github.com/nativecloudclass/cks_gcp_labs/blob/main/2_install_master.sh --output install_master.sh
bash install_master.sh


# INSTALL cks-worker
gcloud compute ssh cks-worker
sudo -i
curl https://github.com/nativecloudclass/cks_gcp_labs/blob/main/3_install_worker.sh --output install_worker.sh
bash install_worker.sh
