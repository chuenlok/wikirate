describe Card::Set::Abstract::FilterForm do
  # define the sample card to use
  let(:card) { Card["Company"].fetch trait: :metric_company_filter }

  it "render core view" do
    html = card.format.render_core
    content_view = card.format.content_view
    expect(html).to have_tag(:div, with: { class: "filter-container" }) do
      with_tag :div, with: { class: "filter-header" } do
        with_tag :span, with: { class: "glyphicon glyphicon-filter" }
        with_tag :div,
                 with: { class: "filter-details", style: "display: none;" } do
          with_tag :form, with: { action: "/Company?view=#{content_view}" } do
            with_tag :h4, text: "Company"
            with_tag :div, with: { class: "form-group filter-input" } do
              with_tag :label, text: "Keyword"
              with_tag :input, with: { type: "text", name: "name" }
            end
            with_tag :div, with: { class: "form-group filter-input" } do
              with_tag :label, text: "Industry"
              with_tag :select, with: { name: "industry" }
            end
            with_tag :div, with: { class: "form-group filter-input" } do
              with_tag :label, text: "Project"
              with_tag :select, with: { name: "project" }
            end
            with_tag :div, with: { class: "form-group filter-input" } do
              with_tag :label, text: "Year"
              with_tag :select, with: { name: "year" }
            end
            with_tag :div, with: { class: "form-group filter-input" } do
              with_tag :label, text: "Value"
              with_tag :select, with: { name: "value" }
            end
            with_tag :a, with: { href: "/Company?view=content_left_col" },
                         text: "Reset"
            with_tag :button, with: { name: "button", type: "submit" },
                              text: "Filter"
          end
        end
      end
    end
  end
  context "Fields are filled" do
    it "expand the form" do
      Card::Env.params["company"] = "Apple Inc"
      html = card.format.render_core
      expect(html).to have_tag :div, with: { class: "filter-details",
                                             style: "display: block;" }
    end
  end
end
