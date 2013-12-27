if defined?(ChefSpec)
  def create_route53_record(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:route53_record, :create, resource_name)
  end
end
