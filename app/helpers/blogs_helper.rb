module BlogsHelper
    def gravatar_helper  
        image_tag "https://vetstreet-brightspot.s3.amazonaws.com/da/5a/a038b1d94ede931d0fa8f8618f77/socialized-puppy-thinkstock-158913287-335sm12313.jpg", width: 40
    end 

    class CodeRayify < Redcarpet::Render::HTML
        def block_code(code, language)
            CodeRay.scan(code, language).div
        end 
    end 

    def markdown(text)
        coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

        options = {
            fenced_code_blocks: true, 
            no_intra_emphasis: true,
            autolink: true,
            lax_html_blocks: true
        }

        markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
        markdown_to_html.render(text).html_safe

    end

end
