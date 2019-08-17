module DefaultPageContent
extend ActiveSupport::Concern

included do
  before_action :set_page_defaults
end

def set_page_defaults
  @page_title = "Devcamp Portofolio | My Portofolio Website"
  @seo_keywords = "Francisca Astengo Portofolio"
end


end
