

# AwsDeploy

Push your app from _staging_ to _production_ server using S3 as a bridge


## Install

Install the gem using the bundle.... 

```
gem 'aws_deploy', :git => 'https://github.com/mangar/aws_deploy.git'
```

...and then:
```
bundle install
```


### First access


Run your site `rails server` and open the URL on your browser: [http://localhost:3000/aws_deploy](http://localhost:3000/aws_deploy)




## Initial Setup

Generate the basic setup by firing on command line:

```
rake aws:setup
```

Generated content:

- config/aws_deploy.yml
- script/deploy.rb
 


- script/_deploy.rb
- script/_deploy_s3.rb


//- script/production/deploy.sh
//- script/production/_deploy_s3.rb
//- script/production/_deploy_


## Configuration

### aws_deploy.yml ###

The value of the fields aws_access_key_id and aws_secret_access_key can be the real value or the reference to the ENV variable.

The file_pattern will be added the environment and .zip or .md5.
Ex.:
file_pattern-test.zip and file_pattern-test.md5  for testing environment
file_pattern-prod.zip and file_pattern-prod.md5  for production environment


```
development:
  aws_bucket: "YOUR_BUCKET_ON_S3"
  aws_access_key_id: "YOUR_ACCESS_KEY or ENV['YOUR_KEY_EXPORTED']"
  aws_secret_access_key: "YOUR_SECRET_ACCESS_KEY or ENV['YOUR_KEY_EXPORTED']"
  file_pattern: FILE_NAME

staging: 
  aws_bucket: "YOUR_BUCKET_ON_S3"
  aws_access_key_id: "YOUR_ACCESS_KEY or ENV['YOUR_KEY_EXPORTED']"
  aws_secret_access_key: "YOUR_SECRET_ACCESS_KEY or ENV['YOUR_KEY_EXPORTED']"
  file_pattern: FILE_NAME

```








## Contribute

- Fork project
- Add features
- Run tests
- Send pull request

## License

See LICENSE file for details