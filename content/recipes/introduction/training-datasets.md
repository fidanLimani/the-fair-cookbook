(fcb-intro-training-datasets)=
# Datasets of relevance

+++
<br/>

````{panels_fairplus}
:identifier_text: FCB0XX
:identifier_link: 'https://w3id.org/faircookbook/FCB0XX'
:difficulty_level: 1
:recipe_type: guidance
:reading_time_minutes: 15
:intended_audience: principal_investigator, data_manager, terminology_manager, data_scientist  
:has_executable_code: nope
:recipe_name: Datasets to train with
```` 


## Main Objectives

The FAIR cookbook aims to provide hands-on, practical advice on how to deliver FAIR data through interactions with Innovative Medicine Initiative projects. These research projects, by nature often involve patient-centric information but dealing with real-world data and human-centric information, clinical data, in particular, is challenging. 
It most often mandates interacting with DACs, i.e. Data Access Committees, and undergoing a vetting process, which can be lengthy and convoluted. This can become a hindrance if the focus of the work is to deliver training on the computational methods available to deal with such data rather than data custody-related tasks, however important these are. 

This FAIR cookbook recipe aims to provide a list of relevant resources belonging to the realm of clinical data so readers can, with the minimal hassle :
- familiarize with the data types (for instance, how do Electronic Health records look like).
- familiarize with the procedures to gain access to sensitive data.
- obtain datasets with which to work and hone computational skills.

The recipe will cover two types of datasets:
- `real datasets` such as the MIMIC-III dataset {footcite}`pmid27219127`, which corresponds to actual medical notes data for which data access requests must be made but which are made available to computational scientists for research purposes.
- `synthetic datasets`, which are available without restrictions since produced by computational methods and independent from any real patient. While handy, this type of data may come with a number of limitations prospective users need to be aware of.




### Electronic Health Records: The MIMIC-III Critical Care Database


- Data Type: Electronic Medical Notes
- Nature of the data: Real Patient Data
- Availability: 
	* https://mimic.physionet.org/about/mimic/
	* From Amazon Web Service Public Data: https://registry.opendata.aws/mimiciii/
- Description: MIMIC-III (Medical Information Mart for Intensive Care III) is a large, freely-available database comprising deidentified health-related data associated with over forty thousand patients who stayed in critical care units of the Beth Israel Deaconess Medical Center between 2001 and 2012. {footcite}`pmid27219127`. The database includes information such as demographics, vital sign measurements made at the bedside (circa 1 data point per hour), laboratory test results, procedures, medications, caregiver notes, imaging reports, and mortality (both in and out of hospital).
- Purpose: MIMIC supports a diverse range of analytic studies spanning epidemiology, clinical decision-rule improvement, and electronic tool development. It is notable for three factors: it is freely available to researchers worldwide. it encompasses a diverse and very large population of ICU patients. it contains high temporal resolution data including lab results, electronic documentation, and bedside monitor trends and waveforms.
- Format: SQL database dump
- License: https://physionet.org/content/mimiciii/view-license/1.4/
- Examples of use:
	* https://aws.amazon.com/blogs/big-data/perform-biomedical-informatics-without-a-database-using-mimic-iii-data-and-amazon-athena/
	* https://aws.amazon.com/blogs/machine-learning/building-predictive-disease-models-using-amazon-sagemaker-with-amazon-healthlake-normalized-data/

#### Requesting Access:

https://mimic.mit.edu/docs/gettingstarted/
https://mimic.physionet.org/gettingstarted/access/


### Electronics Medical Notes: The EBM NLP

- Data Type: Electronic Medical Notes
- Nature of the data: Synthetic Data
- Description: A corpus containing 4,993 abstracts annotated with `(P)articipants`, `(I)nterventions`, and `(O)utcomes`. Training labels are sourced from AMT workers and aggregated to reduce noise. Test labels are collected from medical professionals. {footcite}`https://www.ohdsi.org/wp-content/uploads/2015/04/Lee_Evans_CDMV5_Test_Data_Presentation.pdf`
- Format: *ad-hoc*, UTF-8 text file with tab delimited values
- Availability: https://github.com/bepnye/EBM-NLP
- Purpose: Corpus for training and testing Natural Language Processing algorithms
- License: http://www.apache.org/licenses/LICENSE-2.0



### Synthetic Electronic Medical Notes: the OMOP CDMV5 Test Data


- Data Type: Electronic Medical Notes
- Nature of the data: Synthetic Data
- Description: This test data set, generated by  Lee Evans while working at LTS Computing LLC is an OMOP CDM version 5 formatted collection of 
1000 patient sample of CMS 2008-2010 Data Entrepreneurs’ Synthetic Public Use File (DE-SynPUF). The information held in the dataset  corresponds to Synthetic patients & medicare claims/prescription data. The dataset can be download in a compressed (zipped) format from LTS Computing LLC website: http://www.ltscomputingllc
- Format: OMOP CDM v5.2.2
- Availability: http://www.ltscomputingllc.com/downloads/
- Purpose:  
	* Public data to demo the OHDSI ontologist
	* Benchmark performance
	* Developing & testing OHDSI tools
	* OHDSI tools training
- License: ?



#### SynPUF 1000 person dataset in OMOP CDM v5.2.2 format:

This synthetic dataset corresponds to ....

http://www.ltscomputingllc.com/wp-content/uploads/2018/08/synpuf1k_omop_cdm_5.2.2.zip

For more information about the OMOP Common Data Model, refer to the following:

CDM 5.2.2 DDL for the OHDSI supported DBMSs is available health-related

https://github.com/OHDSI/CommonDataModel/tree/v5.2.2



### Clinical Trial Data in CDISC SDTM format:  #TODO

- Data Type: Clinical Trial Data
- Nature of the data: Dummy Trial Data
- Description: This is a sample study dataset containing CDISC-SDTM formatted data files created originally by CDISC for demo purposes. This dataset can be used by anyone who is interested in CDISC-SDTM formatted dataset. This version is used to demonstrate loading standard clinical datasets into PlatformTM: a data custodianship platform for translational research data. Live demo here: https://platformtm.cloud/app/#/projects/15/main
- Format: CDISC SDTM
- Availability: https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/51B6NK
- Purpose:  
	* Benchmark performance
	* Developing & testing CDISC tools
	* CDISC SDTM tools training
- License: CC0 - "Public Domain Dedication"


### Observational Data in OMOP CDM format: #TODO

- Data Type: Observational Data
- Nature of the data: Dummy Trial Data
- Description: 
- Format: OMOP CDM v?
- Availability: 
- Purpose:  
	* 
- License: 


---
## Conclusions

> This content provides you with a set of resources to kick start your exploration of unstructured text in clinical context.
> These are useful resources for gaining familiarity with these data types.
> Remember to understand the data stewardship requirements that go along with handling real clinical data but also the limitations associated with some synthetic datasets.

<!-- 
TODO : fill in the links to what-should-I-read-next recipes -->

> ### What should I read next?
> * How to request data access and deal with data access committees? <!-- TODO add a link to corresponding document -->
> * How to do NER on EHR with NLP?<!-- TODO add a link to corresponding document -->
> * How to deal with unstructured text?<!-- TODO add a link to corresponding document -->


---

<!-- {download}`bibliography-identifier-mapping.bib <./bibref/bibliography-identifier-mapping.bib>` -->

## References


```{footbibliography}
```
<!-- Johnson, A., Pollard, T., Shen, L. et al. MIMIC-III, a freely accessible critical care database. Sci Data 3, 160035 (2016). https://doi.org/10.1038/sdata.2016.35

https://www.ohdsi.org/wp-content/uploads/2015/04/Lee_Evans_CDMV5_Test_Data_Presentation.pdf

 -->

---

## Authors

````{authors_fairplus}
Philippe: Writing - Original Draft
Susanna: Writing - Review & Editing, Funding Acquisition
Yojana: Writing - Review & Editing
````


---

## License

````{license_fairplus}
CC-BY-4.0
````
