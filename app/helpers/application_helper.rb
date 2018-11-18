module ApplicationHelper

    def copyright_generator
      DevcampViewTool::Renderer.copyright 'Adam Nemeth', 'All rights reserved'
    end
end
