
# Recipe used for a setup and deploy events
Chef::Log.info("Create config/application.yml file...")

node[:deploy].each do |application, deploy|
  environment_variables = deploy[:custom_env].to_h.merge(deploy[:environment_variables].to_h)

  custom_env_template do
    application application
    deploy deploy
    env environment_variables
  end
end


bash 'set_github_token' do
  environment 'PERSONAL_GITHUB_TOKEN' => "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"
end

bash 'set_github_token2' do
  environment 'GITHUB_PERSONAL_TOKEN' => "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"
end
