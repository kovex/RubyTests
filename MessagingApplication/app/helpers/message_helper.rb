# encoding: utf-8
module MessageHelper
  def back_to_overview
    content_tag(:p,
    link_to("Zurück zur Nachrichtenübersicht", messages_path),
    class: "subNavigation")
  end
end
