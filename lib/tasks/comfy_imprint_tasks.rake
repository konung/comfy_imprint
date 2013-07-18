# desc "Explaining what the task does"
# task :comfy_imprint do
#   # Task goes here
# end

namespace :comfy_imprint do
  namespace :install do
    desc "Copy initializer over from gem into app's config."
    task :copy_initializer do
      copy_file File.join(ComfyImprint::Engine.root,'config/initializers/comfy_imprint.rb'), File.join(Rails.root, 'config/initializers/comfy_imprint.rb')
    end
  end
end
