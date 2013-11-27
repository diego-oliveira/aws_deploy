class Tasks::SetupYml

  # 
  # 
  def run

    collect_inputs

    # TODO(m)
    # fix the params, not copying to the file...

    # TODO(m)
    # generate the script dir with deploy.sh and lib dir (aws_send.rb, git_version_tag.rb)

    # 
    # aws_deploy.yml

    content = "development:\n" + 
"  aws_bucket: \"directory/deploy\" \n" + 
"  aws_access_key_id: \"YOUR_ACCESS_KEY_ID__HERE or ENV['YOUR_KEY_EXPORTED']\" \n" + 
"  aws_secret_access_key: \"YOUR_SECRET_ACCESS_KEY__HERE or ENV['YOUR_KEY_EXPORTED']\" \n" + 
"  file_pattern: \"FILE_NAME\" \n" + 
"\n" + 
"development_remote: \n" + 
"  aws_bucket: \"directory/deploy\"\n" + 
"  aws_access_key_id: \"YOUR_ACCESS_KEY_ID__HERE or ENV['YOUR_KEY_EXPORTED']\"\n" + 
"  aws_secret_access_key: \"YOUR_SECRET_ACCESS_KEY__HERE or ENV['YOUR_KEY_EXPORTED']\"\n" + 
"  file_pattern: \"FILE_NAME\"\n"

    File.delete("#{Rails.root}/config/aws_deploy.yml") if File.exists?("#{Rails.root}/config/aws_deploy.yml")

    File.open("#{Rails.root}/config/aws_deploy.yml", "w") do |f| 
      f.write("#{content}")
    end

    "#{Rails.root}/config/aws_deploy.yml"



  end


  def collect_inputs
    
    print "What is the of your AWS BUCKET ? [directory/deploy] :"
    @aws_deploy_bucket = STDIN.gets 
    @aws_deploy_bucket = (@aws_deploy_bucket.blank? ? "directory/deploy" : @aws_deploy_bucket)
    puts "#{@aws_deploy_bucket} \n"

    print "What is your AWS ACCESS KEY ID ? [my_key_id] :"
    @aws_access_key_id = STDIN.gets || "my_key_id"
    puts "#{@aws_access_key_id} \n"

    print "What is your AWS SECRET ACCESS KEY ? [my_secret_key] :"
    @aws_secret_access_key = STDIN.gets || "my_secret_key"
    puts "#{@aws_secret_access_key} \n"

    print "What is your FILE PATERN ? [my_file_before_zip_ext] :"
    @file_pattern = STDIN.gets || "my_file_before_zip_ext"
    puts "#{@file_pattern} \n"




  end


end


