### Running DB to Mongo Data pipeline
* Through NiFi browser, drag the template icon from top bar to the design area  
  
![add template](manual/02-add-from-template.jpg)
* then select database-to-mongo 

  ![select template](manual/11-db-to-mongo-template.jpg)
* You need to activate the controllers configured in the pipeline by clicking on configuration icon 

  ![Configuration](manual/04-configuration.jpg)
* First we need to update the controllers configuration which connects to Postgres and MongoDB by settings the required passwords

  ![configure passwords](manual/16-configure-controllers.jpg)
  * To update MongoDB password, click on controller configuration icon, click on password property, then set the password to root

  ![Update mongoDB password](manual/14-update-mongo-password.jpg)
  * To update Postgres password, click on controller configuration icon, click on password property, then set the value to pg

  ![Update Postgres password](manual/15-update-postgres-password.jpg)
* Navigate to controller services then enable all services 

  ![Enable services](manual/12-enable-controllers.jpg)
* Make sure there are no warnings in pipeline 

  ![warning](manual/06-zero-warnings.jpg)
* You can start the data pipeline now by clicking on start button
* This pipeline will keep query a Postgres table people under demoDB for any records with imported status equals to false.
  To generate fake records, navigate to jupyter notebook [http://localhost:8000](http://localhost:8000), 
  open notebook [generate_fake_to_db.ipynb](notebooks/generate_fake_to_db.ipynb), then execute the python script inside it

    ![Open notebook](manual/13-fake-db-notebook.jpg)
* Navigate back to NiFi browser, you should see how bytes are read and transferred between the pipeline processors 

  ![running data pipeline](manual/09-running-data-pipeline.jpg)
* There is shared volumns between jupyter and NiFi containers, when you generate the CSV file
  from the jupyter it is going to be picked up directly from NiFi processors in case it is running
  you can see the results of the data pipeline through jupyter also under work/json

  ![Generated JSON file](manual/10-json-result.jpg)
