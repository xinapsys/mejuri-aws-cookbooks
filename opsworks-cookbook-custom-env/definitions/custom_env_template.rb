bash 'set_github_token' do
  environment 'PERSONAL_GITHUB_TOKEN' => "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"
end

bash 'set_github_token2' do
  environment 'GITHUB_PERSONAL_TOKEN' => "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"
end


# Accepts:
#   application (application name)
#   deploy (hash of deploy attributes)
#   env (hash of custom environment settings)

define :custom_env_template do
  template "#{params[:deploy][:deploy_to]}/shared/config/application.yml" do
    source "application.yml.erb"
    owner params[:deploy][:user]
    group params[:deploy][:group]
    mode "0660"
    variables :env => params[:env]

    only_if do
      File.exists?("#{params[:deploy][:deploy_to]}/shared/config")
    end
  end
end
