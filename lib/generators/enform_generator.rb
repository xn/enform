class EnformGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  no_tasks { attr_accessor :model_name, :klass }
  argument :model_name, :type => :string, :required => false, :banner => 'ModelName'

  desc "Generate a form from an existing model"
  def create_form_file
    self.klass = model_name.constantize
    template "views/#{view_language}/_form.html.#{view_language}", "app/views/#{klass.table_name}/_form.html.#{view_language}"
    have_manies.each do |hs_mny|
      @hm = hs_mny
      template "views/#{view_language}/_object.#{view_language}", "app/views/#{klass.table_name}/_#{@hm.name.to_s.singularize}_fields.#{view_language}"
    end
    template "views/#{view_language}/new.html.#{view_language}", "app/views/#{klass.table_name}/new.html.#{view_language}"
    template "views/#{view_language}/edit.html.#{view_language}", "app/views/#{klass.table_name}/edit.html.#{view_language}"
    template "controllers/controller.rb", "app/controllers/#{klass.table_name}_controller.rb"
  end

  private

  def view_language
    "haml"
  end

  def model_attributes
    klass.new.attributes
  end

  def associations
    klass.reflect_on_all_associations
  end

  def have_ones
    klass.reflect_on_all_associations(:has_one)
  end

  def have_manies
    klass.reflect_on_all_associations(:has_many)
  end

  def belong_tos
    klass.reflect_on_all_associations(:belongs_to)
  end

  def attributes_for(assoc)
    assoc.active_record.new.attributes
  end

  def have_ones_for(assoc)
    assoc.reflect_on_all_associations(:has_one)
  end

  def have_manies_for(assoc)
    assoc.reflect_on_all_associations(:has_many)
  end

  def belong_tos_for(assoc)
    assoc.reflect_on_all_associations(:belongs_to)
  end
end
