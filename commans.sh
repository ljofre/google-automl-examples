# copiamos la fuente de datos desde nuestro proyecto en google cloud

#wget http://data.vision.ee.ethz.ch/cvl/food-101.tar.gz
gsutil cp gs://food101latam/food-101.tar.gz .

# descomprimir el contenido sin verbosidad para mayor velocidad
tar xzf food-101.tar.gz
# tar xzvf food-101.tar.gz verboso

#sudo mount -o discard,defaults /dev/sdb  ~/disks/food-101-disk-dataset

!pip install google_images_download

!gsutil cp ./food_target.csv gs://food101latam/food-101/


## listar los archivos dentro del bucket
datalab create --no-create-repository --machine-type n1-highmem-2 image-class2
datalab connect image-class2

## descargar archivos

gsutil cp ./food_target.csv gs://poc-latam-210714-vcm/
gsutil -m cp -R ./food-101/images/tomate_cherry/ gs://poc-latam-210714-vcm/food-101/images