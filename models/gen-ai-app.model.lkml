# Define the database connection to be used for this model.
connection: "renold-belajar"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

# datagroup: gen-ai-app_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: gen-ai-app_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Gen-ai-app"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: data_customer {}

explore: credit_card_default_testing {}

explore: credit_card_default_training {}

explore: credit_card_default_asnwer {}

explore: data_payment {}

explore: demo_consumer_churn_test {}

explore: demo_consumer_churn_train {}

explore: credit_card_default {}

explore: german_dataset {}

explore: featuredataset {}

explore: german_dataset_test {}

explore: fmi_sales_dummy {}

explore: dummy_data {}

explore: prediction {}

explore: predict_090223 {}

explore: prediction_creditrisk_100223 {}

explore: prediction_creditrisk_20230215 {}

explore: prediction_creditrisk_130223 {}

explore: san_fransisco_bikeshare {}

explore: salesdataset {}

explore: san_fransisco_bikeshare_answer {}

explore: san_fransisco_bikeshare_testing {}

explore: prediction_retail_100223 {}

explore: san_fransisco_bikeshare_training {}

explore: superstore_datasets {}

explore: storedataset {}
