### Running CSV to JSON pipeline
* Through NiFi browser, drag the template icon from top bar to the design area  

  ![add template](manual/02-add-from-template.jpg)
* then select convert-csv-to-json 
  
![add template](manual/03-select-csv-to-json-template.jpg | width=200)

* You need to activate the controllers configured in the pipeline by clicking on configuration icon 

  ![Configuration](manual/04-configuration.jpg)
* Navigate to controller services then enable all services 

  ![Enable services](manual/05-enable-services.jpg)
* Make sure there are no warnings in pipeline 

  ![warning](manual/06-zero-warnings.jpg)
* You can start the data pipeline now by clicking on start button
* This pipeline waits for a CSV file to be generated under specific path, to generate this file, navigate to jupyter notebook [http://localhost:8888](http://localhost:8888) then open python notebook [generate_fake_csv.ipynb](notebooks/generate_fake_csv.ipynb) under work folder 

  ![Open notebook](manual/08-generate-csv-file.jpg)
* Execute the code inside the notebook
* Navigate back to NiFi browser, you should see how bytes are read and transferred between the pipeline processors 

  ![running data pipeline](manual/09-running-data-pipeline.jpg)
* There is shared volumns between jupyter and NiFi containers, when you generate the CSV file
  from the jupyter it is going to be picked up directly from NiFi processors in case it is running
  you can see the results of the data pipeline through jupyter also under work/json

  ![Generated JSON file](manual/10-json-result.jpg)
