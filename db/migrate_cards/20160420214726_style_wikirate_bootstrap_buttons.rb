# -*- encoding : utf-8 -*-

class StyleWikirateBootstrapButtons < Card::Migration
  def up
    create_or_update name: "style: wikirate bootstrap buttons",
                     type_id: 3819,
                     codename: "style_wikirate_bootstrap_buttons"
  end
end
