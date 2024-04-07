class ApplicationSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :email, :phone, :institute, :course, :domain, :goals, :unique_skill, :company_project, :resume_url
end
